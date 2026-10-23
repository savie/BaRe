.class public final Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/swiftapps/swiftbackup/model/firebase/AppSettings$a;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/swiftapps/swiftbackup/model/firebase/AppSettings$a;


# instance fields
.field private appBackupLimits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;",
            ">;"
        }
    .end annotation
.end field

.field private appListLeftSwipeActions:Ljava/lang/String;

.field private appListRightSwipeActions:Ljava/lang/String;

.field private appsCompressionLevel:Ljava/lang/Integer;

.field private appsMultipleBackupStrategy:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

.field private backupMms:Ljava/lang/Boolean;

.field private callsCompressionLevel:Ljava/lang/Integer;

.field private cloudConnection:Ljava/lang/String;

.field private dropboxChunkSize:Ljava/lang/Integer;

.field private foldersCompressionLevel:Ljava/lang/Integer;

.field private isAppBackupArchivingEnabled:Ljava/lang/Boolean;

.field private isAppCacheBackupReq:Ljava/lang/Boolean;

.field private isDynamicColors:Ljava/lang/Boolean;

.field private isInPlaceApkDowngradeEnabled:Ljava/lang/Boolean;

.field private isMultithreadedDownloads:Ljava/lang/Boolean;

.field private isParallelCloudTransfers:Ljava/lang/Boolean;

.field private isPlayNotificationSounds:Ljava/lang/Boolean;

.field private isRestoreSsaids:Ljava/lang/Boolean;

.field private isShowSystemApps:Ljava/lang/Boolean;

.field private language:Ljava/lang/String;

.field private maxCallBackups:Ljava/lang/Integer;

.field private maxSmsBackups:Ljava/lang/Integer;

.field private msgsCompressionLevel:Ljava/lang/Integer;

.field private multiThreadChunksCount:Ljava/lang/Integer;

.field private nextCloudChunkSize:Ljava/lang/Integer;

.field private nextCloudForcedChunking:Ljava/lang/Boolean;

.field private oneDriveChunkSize:Ljava/lang/Integer;

.field private passwordStrategy:Ljava/lang/Integer;

.field private pinnedQuickActions:Ljava/lang/String;

.field private restorePermissionsMode:Ljava/lang/Integer;

.field private restoreSpecialAppPerms:Ljava/lang/Boolean;

.field private s3ChunkSize:Ljava/lang/Integer;

.field private themeModeId:Ljava/lang/Integer;

.field private useAmoledTheme:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->Companion:Lorg/swiftapps/swiftbackup/model/firebase/AppSettings$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 38

    .line 37
    const/16 v36, 0x3

    const/16 v37, 0x0

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

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, -0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v37}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;-><init>(Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->themeModeId:Ljava/lang/Integer;

    .line 4
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->useAmoledTheme:Ljava/lang/Boolean;

    .line 5
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->pinnedQuickActions:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->restorePermissionsMode:Ljava/lang/Integer;

    .line 7
    iput-object p5, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->restoreSpecialAppPerms:Ljava/lang/Boolean;

    .line 8
    iput-object p6, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->passwordStrategy:Ljava/lang/Integer;

    .line 9
    iput-object p7, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appsCompressionLevel:Ljava/lang/Integer;

    .line 10
    iput-object p8, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appsMultipleBackupStrategy:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 11
    iput-object p9, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isAppCacheBackupReq:Ljava/lang/Boolean;

    .line 12
    iput-object p10, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isAppBackupArchivingEnabled:Ljava/lang/Boolean;

    .line 13
    iput-object p11, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appBackupLimits:Ljava/util/List;

    .line 14
    iput-object p12, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isRestoreSsaids:Ljava/lang/Boolean;

    .line 15
    iput-object p13, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isInPlaceApkDowngradeEnabled:Ljava/lang/Boolean;

    .line 16
    iput-object p14, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isPlayNotificationSounds:Ljava/lang/Boolean;

    .line 17
    iput-object p15, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isDynamicColors:Ljava/lang/Boolean;

    move-object/from16 p1, p16

    .line 18
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->language:Ljava/lang/String;

    move-object/from16 p1, p17

    .line 19
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->maxSmsBackups:Ljava/lang/Integer;

    move-object/from16 p1, p18

    .line 20
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->msgsCompressionLevel:Ljava/lang/Integer;

    move-object/from16 p1, p19

    .line 21
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->backupMms:Ljava/lang/Boolean;

    move-object/from16 p1, p20

    .line 22
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->maxCallBackups:Ljava/lang/Integer;

    move-object/from16 p1, p21

    .line 23
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->callsCompressionLevel:Ljava/lang/Integer;

    move-object/from16 p1, p22

    .line 24
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isShowSystemApps:Ljava/lang/Boolean;

    move-object/from16 p1, p23

    .line 25
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appListRightSwipeActions:Ljava/lang/String;

    move-object/from16 p1, p24

    .line 26
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appListLeftSwipeActions:Ljava/lang/String;

    move-object/from16 p1, p25

    .line 27
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->foldersCompressionLevel:Ljava/lang/Integer;

    move-object/from16 p1, p26

    .line 28
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->cloudConnection:Ljava/lang/String;

    move-object/from16 p1, p27

    .line 29
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isParallelCloudTransfers:Ljava/lang/Boolean;

    move-object/from16 p1, p28

    .line 30
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isMultithreadedDownloads:Ljava/lang/Boolean;

    move-object/from16 p1, p29

    .line 31
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->multiThreadChunksCount:Ljava/lang/Integer;

    move-object/from16 p1, p30

    .line 32
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->dropboxChunkSize:Ljava/lang/Integer;

    move-object/from16 p1, p31

    .line 33
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->oneDriveChunkSize:Ljava/lang/Integer;

    move-object/from16 p1, p32

    .line 34
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->nextCloudChunkSize:Ljava/lang/Integer;

    move-object/from16 p1, p33

    .line 35
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->nextCloudForcedChunking:Ljava/lang/Boolean;

    move-object/from16 p1, p34

    .line 36
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->s3ChunkSize:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 34

    move/from16 v0, p35

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    const/4 v12, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    const/4 v13, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    const/4 v14, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    const/4 v15, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    const/16 v16, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v16, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    const/16 v17, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v17, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_11

    const/16 v18, 0x0

    goto :goto_11

    :cond_11
    move-object/from16 v18, p18

    :goto_11
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_12

    const/16 v19, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v19, p19

    :goto_12
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_13

    const/16 v20, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v20, p20

    :goto_13
    const/high16 v21, 0x100000

    and-int v21, v0, v21

    if-eqz v21, :cond_14

    const/16 v21, 0x0

    goto :goto_14

    :cond_14
    move-object/from16 v21, p21

    :goto_14
    const/high16 v22, 0x200000

    and-int v22, v0, v22

    if-eqz v22, :cond_15

    const/16 v22, 0x0

    goto :goto_15

    :cond_15
    move-object/from16 v22, p22

    :goto_15
    const/high16 v23, 0x400000

    and-int v23, v0, v23

    if-eqz v23, :cond_16

    const/16 v23, 0x0

    goto :goto_16

    :cond_16
    move-object/from16 v23, p23

    :goto_16
    const/high16 v24, 0x800000

    and-int v24, v0, v24

    if-eqz v24, :cond_17

    const/16 v24, 0x0

    goto :goto_17

    :cond_17
    move-object/from16 v24, p24

    :goto_17
    const/high16 v25, 0x1000000

    and-int v25, v0, v25

    if-eqz v25, :cond_18

    const/16 v25, 0x0

    goto :goto_18

    :cond_18
    move-object/from16 v25, p25

    :goto_18
    const/high16 v26, 0x2000000

    and-int v26, v0, v26

    if-eqz v26, :cond_19

    const/16 v26, 0x0

    goto :goto_19

    :cond_19
    move-object/from16 v26, p26

    :goto_19
    const/high16 v27, 0x4000000

    and-int v27, v0, v27

    if-eqz v27, :cond_1a

    const/16 v27, 0x0

    goto :goto_1a

    :cond_1a
    move-object/from16 v27, p27

    :goto_1a
    const/high16 v28, 0x8000000

    and-int v28, v0, v28

    if-eqz v28, :cond_1b

    const/16 v28, 0x0

    goto :goto_1b

    :cond_1b
    move-object/from16 v28, p28

    :goto_1b
    const/high16 v29, 0x10000000

    and-int v29, v0, v29

    if-eqz v29, :cond_1c

    const/16 v29, 0x0

    goto :goto_1c

    :cond_1c
    move-object/from16 v29, p29

    :goto_1c
    const/high16 v30, 0x20000000

    and-int v30, v0, v30

    if-eqz v30, :cond_1d

    const/16 v30, 0x0

    goto :goto_1d

    :cond_1d
    move-object/from16 v30, p30

    :goto_1d
    const/high16 v31, 0x40000000    # 2.0f

    and-int v31, v0, v31

    if-eqz v31, :cond_1e

    const/16 v31, 0x0

    goto :goto_1e

    :cond_1e
    move-object/from16 v31, p31

    :goto_1e
    const/high16 v32, -0x80000000

    and-int v0, v0, v32

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    goto :goto_1f

    :cond_1f
    move-object/from16 v0, p32

    :goto_1f
    and-int/lit8 v32, p36, 0x1

    if-eqz v32, :cond_20

    const/16 v32, 0x0

    goto :goto_20

    :cond_20
    move-object/from16 v32, p33

    :goto_20
    and-int/lit8 v33, p36, 0x2

    if-eqz v33, :cond_21

    const/16 p35, 0x0

    :goto_21
    move-object/from16 p1, p0

    move-object/from16 p33, v0

    move-object/from16 p2, v1

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

    move-object/from16 p17, v16

    move-object/from16 p18, v17

    move-object/from16 p19, v18

    move-object/from16 p20, v19

    move-object/from16 p21, v20

    move-object/from16 p22, v21

    move-object/from16 p23, v22

    move-object/from16 p24, v23

    move-object/from16 p25, v24

    move-object/from16 p26, v25

    move-object/from16 p27, v26

    move-object/from16 p28, v27

    move-object/from16 p29, v28

    move-object/from16 p30, v29

    move-object/from16 p31, v30

    move-object/from16 p32, v31

    move-object/from16 p34, v32

    goto :goto_22

    :cond_21
    move-object/from16 p35, p34

    goto :goto_21

    .line 1
    :goto_22
    invoke-direct/range {p1 .. p35}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;-><init>(Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;IILjava/lang/Object;)Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p35

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->themeModeId:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->useAmoledTheme:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->pinnedQuickActions:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->restorePermissionsMode:Ljava/lang/Integer;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->restoreSpecialAppPerms:Ljava/lang/Boolean;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->passwordStrategy:Ljava/lang/Integer;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appsCompressionLevel:Ljava/lang/Integer;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appsMultipleBackupStrategy:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isAppCacheBackupReq:Ljava/lang/Boolean;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isAppBackupArchivingEnabled:Ljava/lang/Boolean;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appBackupLimits:Ljava/util/List;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isRestoreSsaids:Ljava/lang/Boolean;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isInPlaceApkDowngradeEnabled:Ljava/lang/Boolean;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isPlayNotificationSounds:Ljava/lang/Boolean;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    iget-object v2, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isDynamicColors:Ljava/lang/Boolean;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->language:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, p35, v16

    move-object/from16 p2, v1

    if-eqz v16, :cond_10

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->maxSmsBackups:Ljava/lang/Integer;

    goto :goto_10

    :cond_10
    move-object/from16 v1, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, p35, v16

    move-object/from16 p3, v1

    if-eqz v16, :cond_11

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->msgsCompressionLevel:Ljava/lang/Integer;

    goto :goto_11

    :cond_11
    move-object/from16 v1, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, p35, v16

    move-object/from16 p4, v1

    if-eqz v16, :cond_12

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->backupMms:Ljava/lang/Boolean;

    goto :goto_12

    :cond_12
    move-object/from16 v1, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, p35, v16

    move-object/from16 p5, v1

    if-eqz v16, :cond_13

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->maxCallBackups:Ljava/lang/Integer;

    goto :goto_13

    :cond_13
    move-object/from16 v1, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, p35, v16

    move-object/from16 p6, v1

    if-eqz v16, :cond_14

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->callsCompressionLevel:Ljava/lang/Integer;

    goto :goto_14

    :cond_14
    move-object/from16 v1, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, p35, v16

    move-object/from16 p7, v1

    if-eqz v16, :cond_15

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isShowSystemApps:Ljava/lang/Boolean;

    goto :goto_15

    :cond_15
    move-object/from16 v1, p22

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, p35, v16

    move-object/from16 p8, v1

    if-eqz v16, :cond_16

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appListRightSwipeActions:Ljava/lang/String;

    goto :goto_16

    :cond_16
    move-object/from16 v1, p23

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, p35, v16

    move-object/from16 p9, v1

    if-eqz v16, :cond_17

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appListLeftSwipeActions:Ljava/lang/String;

    goto :goto_17

    :cond_17
    move-object/from16 v1, p24

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, p35, v16

    move-object/from16 p10, v1

    if-eqz v16, :cond_18

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->foldersCompressionLevel:Ljava/lang/Integer;

    goto :goto_18

    :cond_18
    move-object/from16 v1, p25

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, p35, v16

    move-object/from16 p11, v1

    if-eqz v16, :cond_19

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->cloudConnection:Ljava/lang/String;

    goto :goto_19

    :cond_19
    move-object/from16 v1, p26

    :goto_19
    const/high16 v16, 0x4000000

    and-int v16, p35, v16

    move-object/from16 p12, v1

    if-eqz v16, :cond_1a

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isParallelCloudTransfers:Ljava/lang/Boolean;

    goto :goto_1a

    :cond_1a
    move-object/from16 v1, p27

    :goto_1a
    const/high16 v16, 0x8000000

    and-int v16, p35, v16

    move-object/from16 p13, v1

    if-eqz v16, :cond_1b

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isMultithreadedDownloads:Ljava/lang/Boolean;

    goto :goto_1b

    :cond_1b
    move-object/from16 v1, p28

    :goto_1b
    const/high16 v16, 0x10000000

    and-int v16, p35, v16

    move-object/from16 p14, v1

    if-eqz v16, :cond_1c

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->multiThreadChunksCount:Ljava/lang/Integer;

    goto :goto_1c

    :cond_1c
    move-object/from16 v1, p29

    :goto_1c
    const/high16 v16, 0x20000000

    and-int v16, p35, v16

    move-object/from16 p15, v1

    if-eqz v16, :cond_1d

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->dropboxChunkSize:Ljava/lang/Integer;

    goto :goto_1d

    :cond_1d
    move-object/from16 v1, p30

    :goto_1d
    const/high16 v16, 0x40000000    # 2.0f

    and-int v16, p35, v16

    move-object/from16 p16, v1

    if-eqz v16, :cond_1e

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->oneDriveChunkSize:Ljava/lang/Integer;

    goto :goto_1e

    :cond_1e
    move-object/from16 v1, p31

    :goto_1e
    const/high16 v16, -0x80000000

    and-int v16, p35, v16

    move-object/from16 p17, v1

    if-eqz v16, :cond_1f

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->nextCloudChunkSize:Ljava/lang/Integer;

    goto :goto_1f

    :cond_1f
    move-object/from16 v1, p32

    :goto_1f
    and-int/lit8 v16, p36, 0x1

    move-object/from16 p18, v1

    if-eqz v16, :cond_20

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->nextCloudForcedChunking:Ljava/lang/Boolean;

    goto :goto_20

    :cond_20
    move-object/from16 v1, p33

    :goto_20
    and-int/lit8 v16, p36, 0x2

    if-eqz v16, :cond_21

    move-object/from16 p19, v1

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->s3ChunkSize:Ljava/lang/Integer;

    move-object/from16 p34, p19

    move-object/from16 p35, v1

    move-object/from16 p20, p5

    move-object/from16 p21, p6

    move-object/from16 p22, p7

    move-object/from16 p23, p8

    move-object/from16 p24, p9

    move-object/from16 p25, p10

    move-object/from16 p26, p11

    move-object/from16 p27, p12

    move-object/from16 p28, p13

    move-object/from16 p29, p14

    move-object/from16 p30, p15

    move-object/from16 p31, p16

    move-object/from16 p32, p17

    move-object/from16 p33, p18

    move-object/from16 p16, v2

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

    move-object/from16 p17, p2

    move-object/from16 p18, p3

    move-object/from16 p19, p4

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    :goto_21
    move-object/from16 p2, p1

    move-object/from16 p1, v0

    goto :goto_22

    :cond_21
    move-object/from16 p35, p34

    move-object/from16 p34, v1

    move-object/from16 p19, p4

    move-object/from16 p20, p5

    move-object/from16 p21, p6

    move-object/from16 p22, p7

    move-object/from16 p23, p8

    move-object/from16 p24, p9

    move-object/from16 p25, p10

    move-object/from16 p26, p11

    move-object/from16 p27, p12

    move-object/from16 p28, p13

    move-object/from16 p29, p14

    move-object/from16 p30, p15

    move-object/from16 p31, p16

    move-object/from16 p32, p17

    move-object/from16 p33, p18

    move-object/from16 p16, v2

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

    move-object/from16 p17, p2

    move-object/from16 p18, p3

    move-object/from16 p3, v3

    goto :goto_21

    :goto_22
    invoke-virtual/range {p1 .. p35}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->copy(Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;)Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->themeModeId:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component10()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isAppBackupArchivingEnabled:Ljava/lang/Boolean;

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
            "Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appBackupLimits:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component12()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isRestoreSsaids:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component13()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isInPlaceApkDowngradeEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component14()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isPlayNotificationSounds:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component15()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isDynamicColors:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component16()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->language:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component17()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->maxSmsBackups:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component18()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->msgsCompressionLevel:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component19()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->backupMms:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->useAmoledTheme:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component20()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->maxCallBackups:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component21()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->callsCompressionLevel:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component22()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isShowSystemApps:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component23()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appListRightSwipeActions:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component24()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appListLeftSwipeActions:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component25()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->foldersCompressionLevel:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component26()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->cloudConnection:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component27()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isParallelCloudTransfers:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component28()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isMultithreadedDownloads:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component29()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->multiThreadChunksCount:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->pinnedQuickActions:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component30()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->dropboxChunkSize:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component31()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->oneDriveChunkSize:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component32()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->nextCloudChunkSize:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component33()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->nextCloudForcedChunking:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component34()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->s3ChunkSize:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component4()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->restorePermissionsMode:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component5()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->restoreSpecialAppPerms:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component6()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->passwordStrategy:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component7()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appsCompressionLevel:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component8()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appsMultipleBackupStrategy:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component9()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isAppCacheBackupReq:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;)Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ")",
            "Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;

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

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move-object/from16 v30, p30

    move-object/from16 v31, p31

    move-object/from16 v32, p32

    move-object/from16 v33, p33

    move-object/from16 v34, p34

    invoke-direct/range {v0 .. v34}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;-><init>(Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    return-object v0
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
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->themeModeId:Ljava/lang/Integer;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->themeModeId:Ljava/lang/Integer;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->useAmoledTheme:Ljava/lang/Boolean;

    .line 25
    .line 26
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->useAmoledTheme:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->pinnedQuickActions:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->pinnedQuickActions:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->restorePermissionsMode:Ljava/lang/Integer;

    .line 47
    .line 48
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->restorePermissionsMode:Ljava/lang/Integer;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->restoreSpecialAppPerms:Ljava/lang/Boolean;

    .line 58
    .line 59
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->restoreSpecialAppPerms:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->passwordStrategy:Ljava/lang/Integer;

    .line 69
    .line 70
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->passwordStrategy:Ljava/lang/Integer;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appsCompressionLevel:Ljava/lang/Integer;

    .line 80
    .line 81
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appsCompressionLevel:Ljava/lang/Integer;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appsMultipleBackupStrategy:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 91
    .line 92
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appsMultipleBackupStrategy:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isAppCacheBackupReq:Ljava/lang/Boolean;

    .line 102
    .line 103
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isAppCacheBackupReq:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isAppBackupArchivingEnabled:Ljava/lang/Boolean;

    .line 113
    .line 114
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isAppBackupArchivingEnabled:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appBackupLimits:Ljava/util/List;

    .line 124
    .line 125
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appBackupLimits:Ljava/util/List;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isRestoreSsaids:Ljava/lang/Boolean;

    .line 135
    .line 136
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isRestoreSsaids:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isInPlaceApkDowngradeEnabled:Ljava/lang/Boolean;

    .line 146
    .line 147
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isInPlaceApkDowngradeEnabled:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isPlayNotificationSounds:Ljava/lang/Boolean;

    .line 157
    .line 158
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isPlayNotificationSounds:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isDynamicColors:Ljava/lang/Boolean;

    .line 168
    .line 169
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isDynamicColors:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->language:Ljava/lang/String;

    .line 179
    .line 180
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->language:Ljava/lang/String;

    .line 181
    .line 182
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-nez v1, :cond_11

    .line 187
    .line 188
    return v2

    .line 189
    :cond_11
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->maxSmsBackups:Ljava/lang/Integer;

    .line 190
    .line 191
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->maxSmsBackups:Ljava/lang/Integer;

    .line 192
    .line 193
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-nez v1, :cond_12

    .line 198
    .line 199
    return v2

    .line 200
    :cond_12
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->msgsCompressionLevel:Ljava/lang/Integer;

    .line 201
    .line 202
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->msgsCompressionLevel:Ljava/lang/Integer;

    .line 203
    .line 204
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-nez v1, :cond_13

    .line 209
    .line 210
    return v2

    .line 211
    :cond_13
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->backupMms:Ljava/lang/Boolean;

    .line 212
    .line 213
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->backupMms:Ljava/lang/Boolean;

    .line 214
    .line 215
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-nez v1, :cond_14

    .line 220
    .line 221
    return v2

    .line 222
    :cond_14
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->maxCallBackups:Ljava/lang/Integer;

    .line 223
    .line 224
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->maxCallBackups:Ljava/lang/Integer;

    .line 225
    .line 226
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-nez v1, :cond_15

    .line 231
    .line 232
    return v2

    .line 233
    :cond_15
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->callsCompressionLevel:Ljava/lang/Integer;

    .line 234
    .line 235
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->callsCompressionLevel:Ljava/lang/Integer;

    .line 236
    .line 237
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-nez v1, :cond_16

    .line 242
    .line 243
    return v2

    .line 244
    :cond_16
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isShowSystemApps:Ljava/lang/Boolean;

    .line 245
    .line 246
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isShowSystemApps:Ljava/lang/Boolean;

    .line 247
    .line 248
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    if-nez v1, :cond_17

    .line 253
    .line 254
    return v2

    .line 255
    :cond_17
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appListRightSwipeActions:Ljava/lang/String;

    .line 256
    .line 257
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appListRightSwipeActions:Ljava/lang/String;

    .line 258
    .line 259
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    if-nez v1, :cond_18

    .line 264
    .line 265
    return v2

    .line 266
    :cond_18
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appListLeftSwipeActions:Ljava/lang/String;

    .line 267
    .line 268
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appListLeftSwipeActions:Ljava/lang/String;

    .line 269
    .line 270
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    if-nez v1, :cond_19

    .line 275
    .line 276
    return v2

    .line 277
    :cond_19
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->foldersCompressionLevel:Ljava/lang/Integer;

    .line 278
    .line 279
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->foldersCompressionLevel:Ljava/lang/Integer;

    .line 280
    .line 281
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-nez v1, :cond_1a

    .line 286
    .line 287
    return v2

    .line 288
    :cond_1a
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->cloudConnection:Ljava/lang/String;

    .line 289
    .line 290
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->cloudConnection:Ljava/lang/String;

    .line 291
    .line 292
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    if-nez v1, :cond_1b

    .line 297
    .line 298
    return v2

    .line 299
    :cond_1b
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isParallelCloudTransfers:Ljava/lang/Boolean;

    .line 300
    .line 301
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isParallelCloudTransfers:Ljava/lang/Boolean;

    .line 302
    .line 303
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    if-nez v1, :cond_1c

    .line 308
    .line 309
    return v2

    .line 310
    :cond_1c
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isMultithreadedDownloads:Ljava/lang/Boolean;

    .line 311
    .line 312
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isMultithreadedDownloads:Ljava/lang/Boolean;

    .line 313
    .line 314
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    if-nez v1, :cond_1d

    .line 319
    .line 320
    return v2

    .line 321
    :cond_1d
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->multiThreadChunksCount:Ljava/lang/Integer;

    .line 322
    .line 323
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->multiThreadChunksCount:Ljava/lang/Integer;

    .line 324
    .line 325
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    if-nez v1, :cond_1e

    .line 330
    .line 331
    return v2

    .line 332
    :cond_1e
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->dropboxChunkSize:Ljava/lang/Integer;

    .line 333
    .line 334
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->dropboxChunkSize:Ljava/lang/Integer;

    .line 335
    .line 336
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    if-nez v1, :cond_1f

    .line 341
    .line 342
    return v2

    .line 343
    :cond_1f
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->oneDriveChunkSize:Ljava/lang/Integer;

    .line 344
    .line 345
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->oneDriveChunkSize:Ljava/lang/Integer;

    .line 346
    .line 347
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    if-nez v1, :cond_20

    .line 352
    .line 353
    return v2

    .line 354
    :cond_20
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->nextCloudChunkSize:Ljava/lang/Integer;

    .line 355
    .line 356
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->nextCloudChunkSize:Ljava/lang/Integer;

    .line 357
    .line 358
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    if-nez v1, :cond_21

    .line 363
    .line 364
    return v2

    .line 365
    :cond_21
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->nextCloudForcedChunking:Ljava/lang/Boolean;

    .line 366
    .line 367
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->nextCloudForcedChunking:Ljava/lang/Boolean;

    .line 368
    .line 369
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    if-nez v1, :cond_22

    .line 374
    .line 375
    return v2

    .line 376
    :cond_22
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->s3ChunkSize:Ljava/lang/Integer;

    .line 377
    .line 378
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->s3ChunkSize:Ljava/lang/Integer;

    .line 379
    .line 380
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result p0

    .line 384
    if-nez p0, :cond_23

    .line 385
    .line 386
    return v2

    .line 387
    :cond_23
    return v0
.end method

.method public final getAppBackupLimits()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appBackupLimits:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAppListLeftSwipeActions()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appListLeftSwipeActions:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAppListRightSwipeActions()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appListRightSwipeActions:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAppsCompressionLevel()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appsCompressionLevel:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAppsMultipleBackupStrategy()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appsMultipleBackupStrategy:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getBackupMms()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->backupMms:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCallsCompressionLevel()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->callsCompressionLevel:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCloudConnection()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->cloudConnection:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDropboxChunkSize()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->dropboxChunkSize:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getFoldersCompressionLevel()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->foldersCompressionLevel:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->language:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMaxCallBackups()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->maxCallBackups:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMaxSmsBackups()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->maxSmsBackups:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMsgsCompressionLevel()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->msgsCompressionLevel:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMultiThreadChunksCount()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->multiThreadChunksCount:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getNextCloudChunkSize()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->nextCloudChunkSize:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getNextCloudForcedChunking()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->nextCloudForcedChunking:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getOneDriveChunkSize()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->oneDriveChunkSize:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPasswordStrategy()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->passwordStrategy:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPinnedQuickActions()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->pinnedQuickActions:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRestorePermissionsMode()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->restorePermissionsMode:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRestoreSpecialAppPerms()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->restoreSpecialAppPerms:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getS3ChunkSize()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->s3ChunkSize:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getThemeModeId()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->themeModeId:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUseAmoledTheme()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->useAmoledTheme:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->themeModeId:Ljava/lang/Integer;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->useAmoledTheme:Ljava/lang/Boolean;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->pinnedQuickActions:Ljava/lang/String;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    move v2, v1

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :goto_2
    add-int/2addr v0, v2

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->restorePermissionsMode:Ljava/lang/Integer;

    .line 41
    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    move v2, v1

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    :goto_3
    add-int/2addr v0, v2

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    .line 53
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->restoreSpecialAppPerms:Ljava/lang/Boolean;

    .line 54
    .line 55
    if-nez v2, :cond_4

    .line 56
    .line 57
    move v2, v1

    .line 58
    goto :goto_4

    .line 59
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    :goto_4
    add-int/2addr v0, v2

    .line 64
    mul-int/lit8 v0, v0, 0x1f

    .line 65
    .line 66
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->passwordStrategy:Ljava/lang/Integer;

    .line 67
    .line 68
    if-nez v2, :cond_5

    .line 69
    .line 70
    move v2, v1

    .line 71
    goto :goto_5

    .line 72
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    :goto_5
    add-int/2addr v0, v2

    .line 77
    mul-int/lit8 v0, v0, 0x1f

    .line 78
    .line 79
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appsCompressionLevel:Ljava/lang/Integer;

    .line 80
    .line 81
    if-nez v2, :cond_6

    .line 82
    .line 83
    move v2, v1

    .line 84
    goto :goto_6

    .line 85
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    :goto_6
    add-int/2addr v0, v2

    .line 90
    mul-int/lit8 v0, v0, 0x1f

    .line 91
    .line 92
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appsMultipleBackupStrategy:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 93
    .line 94
    if-nez v2, :cond_7

    .line 95
    .line 96
    move v2, v1

    .line 97
    goto :goto_7

    .line 98
    :cond_7
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->hashCode()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    :goto_7
    add-int/2addr v0, v2

    .line 103
    mul-int/lit8 v0, v0, 0x1f

    .line 104
    .line 105
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isAppCacheBackupReq:Ljava/lang/Boolean;

    .line 106
    .line 107
    if-nez v2, :cond_8

    .line 108
    .line 109
    move v2, v1

    .line 110
    goto :goto_8

    .line 111
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    :goto_8
    add-int/2addr v0, v2

    .line 116
    mul-int/lit8 v0, v0, 0x1f

    .line 117
    .line 118
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isAppBackupArchivingEnabled:Ljava/lang/Boolean;

    .line 119
    .line 120
    if-nez v2, :cond_9

    .line 121
    .line 122
    move v2, v1

    .line 123
    goto :goto_9

    .line 124
    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    :goto_9
    add-int/2addr v0, v2

    .line 129
    mul-int/lit8 v0, v0, 0x1f

    .line 130
    .line 131
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appBackupLimits:Ljava/util/List;

    .line 132
    .line 133
    if-nez v2, :cond_a

    .line 134
    .line 135
    move v2, v1

    .line 136
    goto :goto_a

    .line 137
    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    :goto_a
    add-int/2addr v0, v2

    .line 142
    mul-int/lit8 v0, v0, 0x1f

    .line 143
    .line 144
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isRestoreSsaids:Ljava/lang/Boolean;

    .line 145
    .line 146
    if-nez v2, :cond_b

    .line 147
    .line 148
    move v2, v1

    .line 149
    goto :goto_b

    .line 150
    :cond_b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    :goto_b
    add-int/2addr v0, v2

    .line 155
    mul-int/lit8 v0, v0, 0x1f

    .line 156
    .line 157
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isInPlaceApkDowngradeEnabled:Ljava/lang/Boolean;

    .line 158
    .line 159
    if-nez v2, :cond_c

    .line 160
    .line 161
    move v2, v1

    .line 162
    goto :goto_c

    .line 163
    :cond_c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    :goto_c
    add-int/2addr v0, v2

    .line 168
    mul-int/lit8 v0, v0, 0x1f

    .line 169
    .line 170
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isPlayNotificationSounds:Ljava/lang/Boolean;

    .line 171
    .line 172
    if-nez v2, :cond_d

    .line 173
    .line 174
    move v2, v1

    .line 175
    goto :goto_d

    .line 176
    :cond_d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    :goto_d
    add-int/2addr v0, v2

    .line 181
    mul-int/lit8 v0, v0, 0x1f

    .line 182
    .line 183
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isDynamicColors:Ljava/lang/Boolean;

    .line 184
    .line 185
    if-nez v2, :cond_e

    .line 186
    .line 187
    move v2, v1

    .line 188
    goto :goto_e

    .line 189
    :cond_e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    :goto_e
    add-int/2addr v0, v2

    .line 194
    mul-int/lit8 v0, v0, 0x1f

    .line 195
    .line 196
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->language:Ljava/lang/String;

    .line 197
    .line 198
    if-nez v2, :cond_f

    .line 199
    .line 200
    move v2, v1

    .line 201
    goto :goto_f

    .line 202
    :cond_f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    :goto_f
    add-int/2addr v0, v2

    .line 207
    mul-int/lit8 v0, v0, 0x1f

    .line 208
    .line 209
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->maxSmsBackups:Ljava/lang/Integer;

    .line 210
    .line 211
    if-nez v2, :cond_10

    .line 212
    .line 213
    move v2, v1

    .line 214
    goto :goto_10

    .line 215
    :cond_10
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    :goto_10
    add-int/2addr v0, v2

    .line 220
    mul-int/lit8 v0, v0, 0x1f

    .line 221
    .line 222
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->msgsCompressionLevel:Ljava/lang/Integer;

    .line 223
    .line 224
    if-nez v2, :cond_11

    .line 225
    .line 226
    move v2, v1

    .line 227
    goto :goto_11

    .line 228
    :cond_11
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    :goto_11
    add-int/2addr v0, v2

    .line 233
    mul-int/lit8 v0, v0, 0x1f

    .line 234
    .line 235
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->backupMms:Ljava/lang/Boolean;

    .line 236
    .line 237
    if-nez v2, :cond_12

    .line 238
    .line 239
    move v2, v1

    .line 240
    goto :goto_12

    .line 241
    :cond_12
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    :goto_12
    add-int/2addr v0, v2

    .line 246
    mul-int/lit8 v0, v0, 0x1f

    .line 247
    .line 248
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->maxCallBackups:Ljava/lang/Integer;

    .line 249
    .line 250
    if-nez v2, :cond_13

    .line 251
    .line 252
    move v2, v1

    .line 253
    goto :goto_13

    .line 254
    :cond_13
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    :goto_13
    add-int/2addr v0, v2

    .line 259
    mul-int/lit8 v0, v0, 0x1f

    .line 260
    .line 261
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->callsCompressionLevel:Ljava/lang/Integer;

    .line 262
    .line 263
    if-nez v2, :cond_14

    .line 264
    .line 265
    move v2, v1

    .line 266
    goto :goto_14

    .line 267
    :cond_14
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    :goto_14
    add-int/2addr v0, v2

    .line 272
    mul-int/lit8 v0, v0, 0x1f

    .line 273
    .line 274
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isShowSystemApps:Ljava/lang/Boolean;

    .line 275
    .line 276
    if-nez v2, :cond_15

    .line 277
    .line 278
    move v2, v1

    .line 279
    goto :goto_15

    .line 280
    :cond_15
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    :goto_15
    add-int/2addr v0, v2

    .line 285
    mul-int/lit8 v0, v0, 0x1f

    .line 286
    .line 287
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appListRightSwipeActions:Ljava/lang/String;

    .line 288
    .line 289
    if-nez v2, :cond_16

    .line 290
    .line 291
    move v2, v1

    .line 292
    goto :goto_16

    .line 293
    :cond_16
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    :goto_16
    add-int/2addr v0, v2

    .line 298
    mul-int/lit8 v0, v0, 0x1f

    .line 299
    .line 300
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appListLeftSwipeActions:Ljava/lang/String;

    .line 301
    .line 302
    if-nez v2, :cond_17

    .line 303
    .line 304
    move v2, v1

    .line 305
    goto :goto_17

    .line 306
    :cond_17
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    :goto_17
    add-int/2addr v0, v2

    .line 311
    mul-int/lit8 v0, v0, 0x1f

    .line 312
    .line 313
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->foldersCompressionLevel:Ljava/lang/Integer;

    .line 314
    .line 315
    if-nez v2, :cond_18

    .line 316
    .line 317
    move v2, v1

    .line 318
    goto :goto_18

    .line 319
    :cond_18
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    :goto_18
    add-int/2addr v0, v2

    .line 324
    mul-int/lit8 v0, v0, 0x1f

    .line 325
    .line 326
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->cloudConnection:Ljava/lang/String;

    .line 327
    .line 328
    if-nez v2, :cond_19

    .line 329
    .line 330
    move v2, v1

    .line 331
    goto :goto_19

    .line 332
    :cond_19
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    :goto_19
    add-int/2addr v0, v2

    .line 337
    mul-int/lit8 v0, v0, 0x1f

    .line 338
    .line 339
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isParallelCloudTransfers:Ljava/lang/Boolean;

    .line 340
    .line 341
    if-nez v2, :cond_1a

    .line 342
    .line 343
    move v2, v1

    .line 344
    goto :goto_1a

    .line 345
    :cond_1a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    :goto_1a
    add-int/2addr v0, v2

    .line 350
    mul-int/lit8 v0, v0, 0x1f

    .line 351
    .line 352
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isMultithreadedDownloads:Ljava/lang/Boolean;

    .line 353
    .line 354
    if-nez v2, :cond_1b

    .line 355
    .line 356
    move v2, v1

    .line 357
    goto :goto_1b

    .line 358
    :cond_1b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    :goto_1b
    add-int/2addr v0, v2

    .line 363
    mul-int/lit8 v0, v0, 0x1f

    .line 364
    .line 365
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->multiThreadChunksCount:Ljava/lang/Integer;

    .line 366
    .line 367
    if-nez v2, :cond_1c

    .line 368
    .line 369
    move v2, v1

    .line 370
    goto :goto_1c

    .line 371
    :cond_1c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    :goto_1c
    add-int/2addr v0, v2

    .line 376
    mul-int/lit8 v0, v0, 0x1f

    .line 377
    .line 378
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->dropboxChunkSize:Ljava/lang/Integer;

    .line 379
    .line 380
    if-nez v2, :cond_1d

    .line 381
    .line 382
    move v2, v1

    .line 383
    goto :goto_1d

    .line 384
    :cond_1d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 385
    .line 386
    .line 387
    move-result v2

    .line 388
    :goto_1d
    add-int/2addr v0, v2

    .line 389
    mul-int/lit8 v0, v0, 0x1f

    .line 390
    .line 391
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->oneDriveChunkSize:Ljava/lang/Integer;

    .line 392
    .line 393
    if-nez v2, :cond_1e

    .line 394
    .line 395
    move v2, v1

    .line 396
    goto :goto_1e

    .line 397
    :cond_1e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 398
    .line 399
    .line 400
    move-result v2

    .line 401
    :goto_1e
    add-int/2addr v0, v2

    .line 402
    mul-int/lit8 v0, v0, 0x1f

    .line 403
    .line 404
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->nextCloudChunkSize:Ljava/lang/Integer;

    .line 405
    .line 406
    if-nez v2, :cond_1f

    .line 407
    .line 408
    move v2, v1

    .line 409
    goto :goto_1f

    .line 410
    :cond_1f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 411
    .line 412
    .line 413
    move-result v2

    .line 414
    :goto_1f
    add-int/2addr v0, v2

    .line 415
    mul-int/lit8 v0, v0, 0x1f

    .line 416
    .line 417
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->nextCloudForcedChunking:Ljava/lang/Boolean;

    .line 418
    .line 419
    if-nez v2, :cond_20

    .line 420
    .line 421
    move v2, v1

    .line 422
    goto :goto_20

    .line 423
    :cond_20
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 424
    .line 425
    .line 426
    move-result v2

    .line 427
    :goto_20
    add-int/2addr v0, v2

    .line 428
    mul-int/lit8 v0, v0, 0x1f

    .line 429
    .line 430
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->s3ChunkSize:Ljava/lang/Integer;

    .line 431
    .line 432
    if-nez p0, :cond_21

    .line 433
    .line 434
    goto :goto_21

    .line 435
    :cond_21
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 436
    .line 437
    .line 438
    move-result v1

    .line 439
    :goto_21
    add-int/2addr v0, v1

    .line 440
    return v0
.end method

.method public final isAppBackupArchivingEnabled()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isAppBackupArchivingEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isAppCacheBackupReq()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isAppCacheBackupReq:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isDynamicColors()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isDynamicColors:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isInPlaceApkDowngradeEnabled()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isInPlaceApkDowngradeEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isMultithreadedDownloads()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isMultithreadedDownloads:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isParallelCloudTransfers()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isParallelCloudTransfers:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isPlayNotificationSounds()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isPlayNotificationSounds:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isRestoreSsaids()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isRestoreSsaids:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isShowSystemApps()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isShowSystemApps:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setAppBackupArchivingEnabled(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isAppBackupArchivingEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setAppBackupLimits(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appBackupLimits:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setAppCacheBackupReq(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isAppCacheBackupReq:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setAppListLeftSwipeActions(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appListLeftSwipeActions:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setAppListRightSwipeActions(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appListRightSwipeActions:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setAppsCompressionLevel(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appsCompressionLevel:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setAppsMultipleBackupStrategy(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appsMultipleBackupStrategy:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 2
    .line 3
    return-void
.end method

.method public final setBackupMms(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->backupMms:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setCallsCompressionLevel(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->callsCompressionLevel:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setCloudConnection(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->cloudConnection:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDropboxChunkSize(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->dropboxChunkSize:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setDynamicColors(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isDynamicColors:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setFoldersCompressionLevel(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->foldersCompressionLevel:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setInPlaceApkDowngradeEnabled(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isInPlaceApkDowngradeEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->language:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMaxCallBackups(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->maxCallBackups:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setMaxSmsBackups(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->maxSmsBackups:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setMsgsCompressionLevel(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->msgsCompressionLevel:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setMultiThreadChunksCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->multiThreadChunksCount:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setMultithreadedDownloads(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isMultithreadedDownloads:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setNextCloudChunkSize(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->nextCloudChunkSize:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setNextCloudForcedChunking(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->nextCloudForcedChunking:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setOneDriveChunkSize(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->oneDriveChunkSize:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setParallelCloudTransfers(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isParallelCloudTransfers:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setPasswordStrategy(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->passwordStrategy:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setPinnedQuickActions(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->pinnedQuickActions:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPlayNotificationSounds(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isPlayNotificationSounds:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setRestorePermissionsMode(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->restorePermissionsMode:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setRestoreSpecialAppPerms(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->restoreSpecialAppPerms:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setRestoreSsaids(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isRestoreSsaids:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setS3ChunkSize(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->s3ChunkSize:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setShowSystemApps(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isShowSystemApps:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setThemeModeId(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->themeModeId:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setUseAmoledTheme(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->useAmoledTheme:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->themeModeId:Ljava/lang/Integer;

    .line 4
    .line 5
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->useAmoledTheme:Ljava/lang/Boolean;

    .line 6
    .line 7
    iget-object v3, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->pinnedQuickActions:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->restorePermissionsMode:Ljava/lang/Integer;

    .line 10
    .line 11
    iget-object v5, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->restoreSpecialAppPerms:Ljava/lang/Boolean;

    .line 12
    .line 13
    iget-object v6, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->passwordStrategy:Ljava/lang/Integer;

    .line 14
    .line 15
    iget-object v7, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appsCompressionLevel:Ljava/lang/Integer;

    .line 16
    .line 17
    iget-object v8, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appsMultipleBackupStrategy:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 18
    .line 19
    iget-object v9, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isAppCacheBackupReq:Ljava/lang/Boolean;

    .line 20
    .line 21
    iget-object v10, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isAppBackupArchivingEnabled:Ljava/lang/Boolean;

    .line 22
    .line 23
    iget-object v11, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appBackupLimits:Ljava/util/List;

    .line 24
    .line 25
    iget-object v12, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isRestoreSsaids:Ljava/lang/Boolean;

    .line 26
    .line 27
    iget-object v13, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isInPlaceApkDowngradeEnabled:Ljava/lang/Boolean;

    .line 28
    .line 29
    iget-object v14, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isPlayNotificationSounds:Ljava/lang/Boolean;

    .line 30
    .line 31
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isDynamicColors:Ljava/lang/Boolean;

    .line 32
    .line 33
    move-object/from16 v16, v15

    .line 34
    .line 35
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->language:Ljava/lang/String;

    .line 36
    .line 37
    move-object/from16 v17, v15

    .line 38
    .line 39
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->maxSmsBackups:Ljava/lang/Integer;

    .line 40
    .line 41
    move-object/from16 v18, v15

    .line 42
    .line 43
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->msgsCompressionLevel:Ljava/lang/Integer;

    .line 44
    .line 45
    move-object/from16 v19, v15

    .line 46
    .line 47
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->backupMms:Ljava/lang/Boolean;

    .line 48
    .line 49
    move-object/from16 v20, v15

    .line 50
    .line 51
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->maxCallBackups:Ljava/lang/Integer;

    .line 52
    .line 53
    move-object/from16 v21, v15

    .line 54
    .line 55
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->callsCompressionLevel:Ljava/lang/Integer;

    .line 56
    .line 57
    move-object/from16 v22, v15

    .line 58
    .line 59
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isShowSystemApps:Ljava/lang/Boolean;

    .line 60
    .line 61
    move-object/from16 v23, v15

    .line 62
    .line 63
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appListRightSwipeActions:Ljava/lang/String;

    .line 64
    .line 65
    move-object/from16 v24, v15

    .line 66
    .line 67
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->appListLeftSwipeActions:Ljava/lang/String;

    .line 68
    .line 69
    move-object/from16 v25, v15

    .line 70
    .line 71
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->foldersCompressionLevel:Ljava/lang/Integer;

    .line 72
    .line 73
    move-object/from16 v26, v15

    .line 74
    .line 75
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->cloudConnection:Ljava/lang/String;

    .line 76
    .line 77
    move-object/from16 v27, v15

    .line 78
    .line 79
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isParallelCloudTransfers:Ljava/lang/Boolean;

    .line 80
    .line 81
    move-object/from16 v28, v15

    .line 82
    .line 83
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isMultithreadedDownloads:Ljava/lang/Boolean;

    .line 84
    .line 85
    move-object/from16 v29, v15

    .line 86
    .line 87
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->multiThreadChunksCount:Ljava/lang/Integer;

    .line 88
    .line 89
    move-object/from16 v30, v15

    .line 90
    .line 91
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->dropboxChunkSize:Ljava/lang/Integer;

    .line 92
    .line 93
    move-object/from16 v31, v15

    .line 94
    .line 95
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->oneDriveChunkSize:Ljava/lang/Integer;

    .line 96
    .line 97
    move-object/from16 v32, v15

    .line 98
    .line 99
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->nextCloudChunkSize:Ljava/lang/Integer;

    .line 100
    .line 101
    move-object/from16 v33, v15

    .line 102
    .line 103
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->nextCloudForcedChunking:Ljava/lang/Boolean;

    .line 104
    .line 105
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->s3ChunkSize:Ljava/lang/Integer;

    .line 106
    .line 107
    move-object/from16 p0, v0

    .line 108
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    move-object/from16 v34, v15

    .line 112
    .line 113
    const-string v15, "AppSettings(themeModeId="

    .line 114
    .line 115
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v1, ", useAmoledTheme="

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v1, ", pinnedQuickActions="

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v1, ", restorePermissionsMode="

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v1, ", restoreSpecialAppPerms="

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v1, ", passwordStrategy="

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v1, ", appsCompressionLevel="

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v1, ", appsMultipleBackupStrategy="

    .line 170
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v1, ", isAppCacheBackupReq="

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v1, ", isAppBackupArchivingEnabled="

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v1, ", appBackupLimits="

    .line 194
    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v1, ", isRestoreSsaids="

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const-string v1, ", isInPlaceApkDowngradeEnabled="

    .line 210
    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v1, ", isPlayNotificationSounds="

    .line 218
    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string v1, ", isDynamicColors="

    .line 226
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    move-object/from16 v1, v16

    .line 231
    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    const-string v1, ", language="

    .line 236
    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    move-object/from16 v1, v17

    .line 241
    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v1, ", maxSmsBackups="

    .line 246
    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    move-object/from16 v1, v18

    .line 251
    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    const-string v1, ", msgsCompressionLevel="

    .line 256
    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    move-object/from16 v1, v19

    .line 261
    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string v1, ", backupMms="

    .line 266
    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    move-object/from16 v1, v20

    .line 271
    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    const-string v1, ", maxCallBackups="

    .line 276
    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    move-object/from16 v1, v21

    .line 281
    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const-string v1, ", callsCompressionLevel="

    .line 286
    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    move-object/from16 v1, v22

    .line 291
    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    const-string v1, ", isShowSystemApps="

    .line 296
    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    move-object/from16 v1, v23

    .line 301
    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    const-string v1, ", appListRightSwipeActions="

    .line 306
    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    const-string v1, ", appListLeftSwipeActions="

    .line 311
    .line 312
    const-string v2, ", foldersCompressionLevel="

    .line 313
    .line 314
    move-object/from16 v3, v24

    .line 315
    .line 316
    move-object/from16 v4, v25

    .line 317
    .line 318
    invoke-static {v0, v3, v1, v4, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    move-object/from16 v1, v26

    .line 322
    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    const-string v1, ", cloudConnection="

    .line 327
    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    move-object/from16 v1, v27

    .line 332
    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string v1, ", isParallelCloudTransfers="

    .line 337
    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    move-object/from16 v1, v28

    .line 342
    .line 343
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    const-string v1, ", isMultithreadedDownloads="

    .line 347
    .line 348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    move-object/from16 v1, v29

    .line 352
    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    const-string v1, ", multiThreadChunksCount="

    .line 357
    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    move-object/from16 v1, v30

    .line 362
    .line 363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    const-string v1, ", dropboxChunkSize="

    .line 367
    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    move-object/from16 v1, v31

    .line 372
    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    const-string v1, ", oneDriveChunkSize="

    .line 377
    .line 378
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    move-object/from16 v1, v32

    .line 382
    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    const-string v1, ", nextCloudChunkSize="

    .line 387
    .line 388
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    move-object/from16 v1, v33

    .line 392
    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    const-string v1, ", nextCloudForcedChunking="

    .line 397
    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    move-object/from16 v1, v34

    .line 402
    .line 403
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    const-string v1, ", s3ChunkSize="

    .line 407
    .line 408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    move-object/from16 v1, p0

    .line 412
    .line 413
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    const-string v1, ")"

    .line 417
    .line 418
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    return-object v0
.end method
