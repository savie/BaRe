.class public final Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljl0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Ldr1;

.field private static final logTag:Ljava/lang/String; = "ConfigSettings"


# instance fields
.field private final _appParts:Ljava/lang/String;

.field private final _archiveBackup:Ljava/lang/Integer;

.field private final _backupLimits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;",
            ">;"
        }
    .end annotation
.end field

.field private final _cacheBackup:Ljava/lang/Integer;

.field private final _compressionLevel:Ljava/lang/Integer;

.field private final _enabled:Ljava/lang/Integer;

.field private final _isForceRedo:Ljava/lang/Integer;

.field private final _locations:Ljava/lang/String;

.field private final _multipleBackupStrategy:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

.field private final _restorePermissionsMode:Ljava/lang/String;

.field private final _restoreSpecialPermissions:Ljava/lang/Integer;

.field private final _restoreSsaid:Ljava/lang/Integer;

.field private final _syncOption:Ljava/lang/String;

.field private final applyData:Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;

.field private final id:Ljava/lang/String;

.field private final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ldr1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->Companion:Ldr1;

    .line 7
    .line 8
    new-instance v0, Lorg/swiftapps/swiftbackup/appconfigs/data/b;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 19

    .line 35
    const v17, 0xffff

    const/16 v18, 0x0

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

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v18}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;-><init>(ILjava/lang/String;Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;",
            ">;",
            "Ljava/lang/Integer;",
            "Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->version:I

    .line 20
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->id:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->applyData:Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;

    .line 22
    iput-object p4, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_appParts:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_locations:Ljava/lang/String;

    .line 24
    iput-object p6, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_syncOption:Ljava/lang/String;

    .line 25
    iput-object p7, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_backupLimits:Ljava/util/List;

    .line 26
    iput-object p8, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_archiveBackup:Ljava/lang/Integer;

    .line 27
    iput-object p9, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_multipleBackupStrategy:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 28
    iput-object p10, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_restorePermissionsMode:Ljava/lang/String;

    .line 29
    iput-object p11, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_restoreSpecialPermissions:Ljava/lang/Integer;

    .line 30
    iput-object p12, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_restoreSsaid:Ljava/lang/Integer;

    .line 31
    iput-object p13, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_compressionLevel:Ljava/lang/Integer;

    .line 32
    iput-object p14, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_cacheBackup:Ljava/lang/Integer;

    .line 33
    iput-object p15, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_isForceRedo:Ljava/lang/Integer;

    move-object/from16 p1, p16

    .line 34
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_enabled:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 17

    move/from16 v0, p17

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 1
    sget-object v3, Lxe6;->b:Lxe6;

    .line 2
    iget-object v3, v3, Lxe6;->a:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Random;

    const/4 v5, 0x6

    .line 3
    invoke-static {v5, v2, v2, v4, v3}, Lnh4;->k(IZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    move-object v5, v4

    goto :goto_2

    :cond_2
    move-object/from16 v5, p3

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_4

    .line 5
    sget-object v6, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->Companion:Ldr1;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-boolean v6, Lmp6;->g:Z

    if-eqz v6, :cond_3

    .line 7
    sget-object v6, Liu;->APP:Liu;

    sget-object v7, Liu;->DATA:Liu;

    filled-new-array {v6, v7}, [Liu;

    move-result-object v6

    invoke-static {v6}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    :goto_3
    move-object v7, v6

    goto :goto_4

    .line 8
    :cond_3
    sget-object v6, Liu;->APP:Liu;

    invoke-static {v6}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    goto :goto_3

    :goto_4
    const/4 v11, 0x0

    const/16 v12, 0x3f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 9
    invoke-static/range {v7 .. v12}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_4
    move-object/from16 v6, p4

    :goto_5
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_5

    .line 10
    sget-object v7, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->Companion:Ldr1;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    sget-object v7, Lq05;->DEVICE:Lq05;

    invoke-static {v7}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v12, 0x0

    const/16 v13, 0x3f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 12
    invoke-static/range {v8 .. v13}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_5
    move-object/from16 v7, p5

    :goto_6
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_6

    move-object v8, v4

    goto :goto_7

    :cond_6
    move-object/from16 v8, p6

    :goto_7
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_7

    move-object v9, v4

    goto :goto_8

    :cond_7
    move-object/from16 v9, p7

    :goto_8
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_8

    move-object v10, v4

    goto :goto_9

    :cond_8
    move-object/from16 v10, p8

    :goto_9
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_9

    move-object v11, v4

    goto :goto_a

    :cond_9
    move-object/from16 v11, p9

    :goto_a
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_a

    .line 13
    sget-object v12, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->Companion:Ldr1;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    sget-object v12, Lyu;->Granted:Lyu;

    .line 15
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_b

    :cond_a
    move-object/from16 v12, p10

    :goto_b
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_b

    move-object v13, v4

    goto :goto_c

    :cond_b
    move-object/from16 v13, p11

    :goto_c
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_c

    move-object v14, v4

    goto :goto_d

    :cond_c
    move-object/from16 v14, p12

    :goto_d
    and-int/lit16 v15, v0, 0x1000

    if-eqz v15, :cond_d

    move-object v15, v4

    goto :goto_e

    :cond_d
    move-object/from16 v15, p13

    :goto_e
    move/from16 p18, v2

    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_e

    move-object v2, v4

    goto :goto_f

    :cond_e
    move-object/from16 v2, p14

    :goto_f
    and-int/lit16 v4, v0, 0x4000

    if-eqz v4, :cond_f

    const/4 v4, 0x0

    goto :goto_10

    :cond_f
    move-object/from16 v4, p15

    :goto_10
    const v16, 0x8000

    and-int v0, v0, v16

    if-eqz v0, :cond_10

    .line 16
    invoke-static/range {p18 .. p18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 p17, v0

    :goto_11
    move-object/from16 p1, p0

    move/from16 p2, v1

    move-object/from16 p15, v2

    move-object/from16 p3, v3

    move-object/from16 p16, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v15

    goto :goto_12

    :cond_10
    move-object/from16 p17, p16

    goto :goto_11

    .line 17
    :goto_12
    invoke-direct/range {p1 .. p17}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;-><init>(ILjava/lang/String;Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic c(Lq05;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->toDisplayString$lambda$0$1(Lq05;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;ILjava/lang/String;Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p17

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->version:I

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->id:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->applyData:Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_appParts:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_locations:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_syncOption:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_backupLimits:Ljava/util/List;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_archiveBackup:Ljava/lang/Integer;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_multipleBackupStrategy:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_restorePermissionsMode:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_restoreSpecialPermissions:Ljava/lang/Integer;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_restoreSsaid:Ljava/lang/Integer;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_compressionLevel:Ljava/lang/Integer;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_cacheBackup:Ljava/lang/Integer;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move/from16 p1, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    iget-object v2, v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_isForceRedo:Ljava/lang/Integer;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v1, v1, v16

    if-eqz v1, :cond_f

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_enabled:Ljava/lang/Integer;

    move-object/from16 p17, v1

    :goto_f
    move/from16 p2, p1

    move-object/from16 p1, v0

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

    goto :goto_10

    :cond_f
    move-object/from16 p17, p16

    goto :goto_f

    :goto_10
    invoke-virtual/range {p1 .. p17}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->copy(ILjava/lang/String;Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;)Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getSyncOption$lambda$0(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;)Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getAppParts$lambda$1$0(Ljava/lang/String;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final getAppParts$lambda$1$0(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    const-string v0, ", "

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x6

    .line 8
    invoke-static {p0, v0, v1}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    const/16 v1, 0xa

    .line 15
    .line 16
    invoke-static {p0, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

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
    invoke-static {v1}, Liu;->valueOf(Ljava/lang/String;)Liu;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    return-object v0
.end method

.method private static final getLocations$lambda$1$0(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    const-string v0, ", "

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x6

    .line 8
    invoke-static {p0, v0, v1}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    const/16 v1, 0xa

    .line 15
    .line 16
    invoke-static {p0, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

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
    invoke-static {v1}, Lq05;->valueOf(Ljava/lang/String;)Lq05;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    return-object v0
.end method

.method private static final getSyncOption$lambda$0(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;)Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_syncOption:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_2

    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    :goto_0
    move-object p0, v0

    .line 20
    :cond_1
    if-eqz p0, :cond_2

    .line 21
    .line 22
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;->valueOf(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_2
    return-object v0
.end method

.method public static synthetic isValid$default(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;ZILjava/lang/Object;)Z
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->isValid(Z)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static synthetic l(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getLocations$lambda$1$0(Ljava/lang/String;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic m(Liu;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->toDisplayString$lambda$0$0(Liu;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final toDisplayString$lambda$0$0(Liu;)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {p0, v2, v0, v1}, Liu;->toDisplayString$default(Liu;ZILjava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static final toDisplayString$lambda$0$1(Lq05;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lq05;->toDisplayString()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->version:I

    .line 2
    .line 3
    return p0
.end method

.method public final component10()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_restorePermissionsMode:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component11()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_restoreSpecialPermissions:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component12()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_restoreSsaid:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component13()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_compressionLevel:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component14()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_cacheBackup:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component15()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_isForceRedo:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component16()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_enabled:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->applyData:Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_appParts:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_locations:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_syncOption:Ljava/lang/String;

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
            "Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_backupLimits:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component8()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_archiveBackup:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component9()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_multipleBackupStrategy:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(ILjava/lang/String;Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;",
            ">;",
            "Ljava/lang/Integer;",
            "Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;"
        }
    .end annotation

    .line 1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    move/from16 v1, p1

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

    invoke-direct/range {v0 .. v16}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;-><init>(ILjava/lang/String;Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

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
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 12
    .line 13
    iget v1, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->version:I

    .line 14
    .line 15
    iget v3, p1, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->version:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->id:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->id:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->applyData:Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;

    .line 32
    .line 33
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->applyData:Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_appParts:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_appParts:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_locations:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_locations:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_syncOption:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_syncOption:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_backupLimits:Ljava/util/List;

    .line 76
    .line 77
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_backupLimits:Ljava/util/List;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_archiveBackup:Ljava/lang/Integer;

    .line 87
    .line 88
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_archiveBackup:Ljava/lang/Integer;

    .line 89
    .line 90
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_9

    .line 95
    .line 96
    return v2

    .line 97
    :cond_9
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_multipleBackupStrategy:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 98
    .line 99
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_multipleBackupStrategy:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 100
    .line 101
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-nez v1, :cond_a

    .line 106
    .line 107
    return v2

    .line 108
    :cond_a
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_restorePermissionsMode:Ljava/lang/String;

    .line 109
    .line 110
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_restorePermissionsMode:Ljava/lang/String;

    .line 111
    .line 112
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-nez v1, :cond_b

    .line 117
    .line 118
    return v2

    .line 119
    :cond_b
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_restoreSpecialPermissions:Ljava/lang/Integer;

    .line 120
    .line 121
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_restoreSpecialPermissions:Ljava/lang/Integer;

    .line 122
    .line 123
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-nez v1, :cond_c

    .line 128
    .line 129
    return v2

    .line 130
    :cond_c
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_restoreSsaid:Ljava/lang/Integer;

    .line 131
    .line 132
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_restoreSsaid:Ljava/lang/Integer;

    .line 133
    .line 134
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-nez v1, :cond_d

    .line 139
    .line 140
    return v2

    .line 141
    :cond_d
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_compressionLevel:Ljava/lang/Integer;

    .line 142
    .line 143
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_compressionLevel:Ljava/lang/Integer;

    .line 144
    .line 145
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-nez v1, :cond_e

    .line 150
    .line 151
    return v2

    .line 152
    :cond_e
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_cacheBackup:Ljava/lang/Integer;

    .line 153
    .line 154
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_cacheBackup:Ljava/lang/Integer;

    .line 155
    .line 156
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-nez v1, :cond_f

    .line 161
    .line 162
    return v2

    .line 163
    :cond_f
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_isForceRedo:Ljava/lang/Integer;

    .line 164
    .line 165
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_isForceRedo:Ljava/lang/Integer;

    .line 166
    .line 167
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-nez v1, :cond_10

    .line 172
    .line 173
    return v2

    .line 174
    :cond_10
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_enabled:Ljava/lang/Integer;

    .line 175
    .line 176
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_enabled:Ljava/lang/Integer;

    .line 177
    .line 178
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result p0

    .line 182
    if-nez p0, :cond_11

    .line 183
    .line 184
    return v2

    .line 185
    :cond_11
    return v0
.end method

.method public final getAppParts()Ljava/util/List;
    .locals 4
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
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_appParts:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    move-object p0, v1

    .line 13
    :cond_0
    if-eqz p0, :cond_2

    .line 14
    .line 15
    new-instance v0, Lcr1;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-direct {v0, p0, v2}, Lcr1;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    const/16 p0, 0xa

    .line 22
    .line 23
    const-string v2, "ConfigSettings"

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-static {v2, v1, v3, v0, p0}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Ljava/util/List;

    .line 31
    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    move-object v1, p0

    .line 41
    :cond_1
    if-eqz v1, :cond_2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    sget-object p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->Companion:Ldr1;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    sget-boolean p0, Lmp6;->g:Z

    .line 50
    .line 51
    if-eqz p0, :cond_3

    .line 52
    .line 53
    sget-object p0, Liu;->APP:Liu;

    .line 54
    .line 55
    sget-object v0, Liu;->DATA:Liu;

    .line 56
    .line 57
    filled-new-array {p0, v0}, [Liu;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {p0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    :goto_0
    move-object v1, p0

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    sget-object p0, Liu;->APP:Liu;

    .line 68
    .line 69
    invoke-static {p0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    goto :goto_0

    .line 74
    :goto_1
    invoke-static {v1}, Lel1;->m1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0
.end method

.method public final getApplyData()Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->applyData:Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getBackupLimits()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_backupLimits:Ljava/util/List;

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
    check-cast v2, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;

    .line 26
    .line 27
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->isValid()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-object v0

    .line 38
    :cond_2
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method

.method public final getCacheBackup()Z
    .locals 2
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_cacheBackup:Ljava/lang/Integer;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne p0, v1, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    return v0

    .line 15
    :cond_1
    sget-object p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->Companion:Ldr1;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    return v0
.end method

.method public final getCompressionLevel()Lxp1;
    .locals 5
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_compressionLevel:Ljava/lang/Integer;

    .line 2
    .line 3
    sget-object v0, Lxp1;->Companion:Lwp1;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lwp1;->a()[Lxp1;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    const/4 v2, 0x2

    .line 14
    if-ge v1, v2, :cond_2

    .line 15
    .line 16
    aget-object v2, v0, v1

    .line 17
    .line 18
    invoke-virtual {v2}, Lxp1;->getLevel()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-ne v3, v4, :cond_1

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/4 v2, 0x0

    .line 36
    :goto_2
    if-nez v2, :cond_3

    .line 37
    .line 38
    sget-object p0, Lxp1;->Companion:Lwp1;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lxp1;->access$getDEFAULT$cp()Lxp1;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_3
    return-object v2
.end method

.method public getCopy()Ljl0;
    .locals 20
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    const v18, 0xffff

    .line 2
    .line 3
    .line 4
    const/16 v19, 0x0

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
    move-object/from16 v1, p0

    .line 25
    .line 26
    invoke-static/range {v1 .. v19}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->copy$default(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;ILjava/lang/String;Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLocations()Ljava/util/List;
    .locals 4
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
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_locations:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    move-object p0, v1

    .line 13
    :cond_0
    if-eqz p0, :cond_2

    .line 14
    .line 15
    new-instance v0, Lqu;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-direct {v0, p0, v2}, Lqu;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    const/16 p0, 0xa

    .line 22
    .line 23
    const-string v3, "ConfigSettings"

    .line 24
    .line 25
    invoke-static {v3, v1, v2, v0, p0}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Ljava/util/List;

    .line 30
    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    move-object v1, p0

    .line 40
    :cond_1
    if-eqz v1, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    sget-object p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->Companion:Ldr1;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    sget-object p0, Lq05;->DEVICE:Lq05;

    .line 49
    .line 50
    invoke-static {p0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :goto_0
    invoke-static {v1}, Lel1;->m1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0
.end method

.method public final getMultipleBackupStrategy()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_multipleBackupStrategy:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->isLegacyArchiveBackupEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    sget-object p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->Companion:Lorg/swiftapps/swiftbackup/settings/b;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/b;->b()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_1
    sget-object p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->Companion:Lorg/swiftapps/swiftbackup/settings/b;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/b;->a()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public final getRestorePermissionsMode()Lyu;
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_restorePermissionsMode:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-static {p0}, Lyu;->valueOf(Ljava/lang/String;)Lyu;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return-object p0

    .line 13
    :cond_1
    :goto_0
    sget-object p0, Lyu;->Granted:Lyu;

    .line 14
    .line 15
    return-object p0
.end method

.method public final getRestoreSpecialPermissions()Z
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_restoreSpecialPermissions:Ljava/lang/Integer;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-ne p0, v0, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_1
    sget-object p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->Companion:Ldr1;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    return v0
.end method

.method public final getRestoreSsaid()Z
    .locals 2
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_restoreSsaid:Ljava/lang/Integer;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne p0, v1, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    return v0

    .line 15
    :cond_1
    sget-object p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->Companion:Ldr1;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    return v0
.end method

.method public final getSyncOption()Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;
    .locals 4
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    new-instance v0, Lfj;

    .line 2
    .line 3
    const/16 v1, 0x12

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lfj;-><init>(Ljava/lang/Object;I)V

    .line 6
    .line 7
    .line 8
    const/16 p0, 0xa

    .line 9
    .line 10
    const-string v1, "ConfigSettings"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-static {v1, v2, v3, v0, p0}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 19
    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    sget-object p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->Companion:Ldr1;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    sget-object p0, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;->WIFI:Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 28
    .line 29
    :cond_0
    return-object p0
.end method

.method public final getVersion()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->version:I

    .line 2
    .line 3
    return p0
.end method

.method public final get_appParts()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_appParts:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_archiveBackup()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_archiveBackup:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_backupLimits()Ljava/util/List;
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
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_backupLimits:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_cacheBackup()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_cacheBackup:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_compressionLevel()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_compressionLevel:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_enabled()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_enabled:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_isForceRedo()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_isForceRedo:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_locations()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_locations:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_multipleBackupStrategy()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_multipleBackupStrategy:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_restorePermissionsMode()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_restorePermissionsMode:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_restoreSpecialPermissions()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_restoreSpecialPermissions:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_restoreSsaid()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_restoreSsaid:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_syncOption()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_syncOption:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hasApk()Z
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getAppParts()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Liu;->APP:Liu;

    .line 6
    .line 7
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final hasData()Z
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getAppParts()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Liu;->DATA:Liu;

    .line 6
    .line 7
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final hasExpansion()Z
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getAppParts()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Liu;->EXPANSION:Liu;

    .line 6
    .line 7
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final hasExtData()Z
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getAppParts()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Liu;->EXTDATA:Liu;

    .line 6
    .line 7
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final hasMedia()Z
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getAppParts()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Liu;->MEDIA:Liu;

    .line 6
    .line 7
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->version:I

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->id:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->applyData:Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    move v2, v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    :goto_0
    add-int/2addr v0, v2

    .line 28
    mul-int/2addr v0, v1

    .line 29
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_appParts:Ljava/lang/String;

    .line 30
    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    move v2, v3

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    :goto_1
    add-int/2addr v0, v2

    .line 40
    mul-int/2addr v0, v1

    .line 41
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_locations:Ljava/lang/String;

    .line 42
    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    move v2, v3

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    :goto_2
    add-int/2addr v0, v2

    .line 52
    mul-int/2addr v0, v1

    .line 53
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_syncOption:Ljava/lang/String;

    .line 54
    .line 55
    if-nez v2, :cond_3

    .line 56
    .line 57
    move v2, v3

    .line 58
    goto :goto_3

    .line 59
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    :goto_3
    add-int/2addr v0, v2

    .line 64
    mul-int/2addr v0, v1

    .line 65
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_backupLimits:Ljava/util/List;

    .line 66
    .line 67
    if-nez v2, :cond_4

    .line 68
    .line 69
    move v2, v3

    .line 70
    goto :goto_4

    .line 71
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    :goto_4
    add-int/2addr v0, v2

    .line 76
    mul-int/2addr v0, v1

    .line 77
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_archiveBackup:Ljava/lang/Integer;

    .line 78
    .line 79
    if-nez v2, :cond_5

    .line 80
    .line 81
    move v2, v3

    .line 82
    goto :goto_5

    .line 83
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    :goto_5
    add-int/2addr v0, v2

    .line 88
    mul-int/2addr v0, v1

    .line 89
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_multipleBackupStrategy:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 90
    .line 91
    if-nez v2, :cond_6

    .line 92
    .line 93
    move v2, v3

    .line 94
    goto :goto_6

    .line 95
    :cond_6
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->hashCode()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    :goto_6
    add-int/2addr v0, v2

    .line 100
    mul-int/2addr v0, v1

    .line 101
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_restorePermissionsMode:Ljava/lang/String;

    .line 102
    .line 103
    if-nez v2, :cond_7

    .line 104
    .line 105
    move v2, v3

    .line 106
    goto :goto_7

    .line 107
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    :goto_7
    add-int/2addr v0, v2

    .line 112
    mul-int/2addr v0, v1

    .line 113
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_restoreSpecialPermissions:Ljava/lang/Integer;

    .line 114
    .line 115
    if-nez v2, :cond_8

    .line 116
    .line 117
    move v2, v3

    .line 118
    goto :goto_8

    .line 119
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    :goto_8
    add-int/2addr v0, v2

    .line 124
    mul-int/2addr v0, v1

    .line 125
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_restoreSsaid:Ljava/lang/Integer;

    .line 126
    .line 127
    if-nez v2, :cond_9

    .line 128
    .line 129
    move v2, v3

    .line 130
    goto :goto_9

    .line 131
    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    :goto_9
    add-int/2addr v0, v2

    .line 136
    mul-int/2addr v0, v1

    .line 137
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_compressionLevel:Ljava/lang/Integer;

    .line 138
    .line 139
    if-nez v2, :cond_a

    .line 140
    .line 141
    move v2, v3

    .line 142
    goto :goto_a

    .line 143
    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    :goto_a
    add-int/2addr v0, v2

    .line 148
    mul-int/2addr v0, v1

    .line 149
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_cacheBackup:Ljava/lang/Integer;

    .line 150
    .line 151
    if-nez v2, :cond_b

    .line 152
    .line 153
    move v2, v3

    .line 154
    goto :goto_b

    .line 155
    :cond_b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    :goto_b
    add-int/2addr v0, v2

    .line 160
    mul-int/2addr v0, v1

    .line 161
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_isForceRedo:Ljava/lang/Integer;

    .line 162
    .line 163
    if-nez v2, :cond_c

    .line 164
    .line 165
    move v2, v3

    .line 166
    goto :goto_c

    .line 167
    :cond_c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    :goto_c
    add-int/2addr v0, v2

    .line 172
    mul-int/2addr v0, v1

    .line 173
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_enabled:Ljava/lang/Integer;

    .line 174
    .line 175
    if-nez p0, :cond_d

    .line 176
    .line 177
    goto :goto_d

    .line 178
    :cond_d
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    :goto_d
    add-int/2addr v0, v3

    .line 183
    return v0
.end method

.method public final isEnabled()Z
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_enabled:Ljava/lang/Integer;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-ne p0, v0, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_1
    return v0
.end method

.method public final isForceRedo()Z
    .locals 2
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_isForceRedo:Ljava/lang/Integer;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne p0, v1, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    return v0
.end method

.method public final isLegacyArchiveBackupEnabled()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_archiveBackup:Ljava/lang/Integer;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne p0, v1, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    return v0
.end method

.method public final isValid(Z)Z
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->applyData:Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;->isValid(Z)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/4 p1, 0x1

    .line 11
    if-ne p0, p1, :cond_0

    .line 12
    .line 13
    return p1

    .line 14
    :cond_0
    return v0
.end method

.method public final removeCloudLocation()Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;
    .locals 27
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual/range {p0 .. p0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getLocations()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lq05;->CLOUD:Lq05;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lel1;->e1(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v6, 0x0

    .line 12
    const/16 v7, 0x3f

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-static/range {v2 .. v7}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v13

    .line 21
    const v25, 0xffef

    .line 22
    .line 23
    .line 24
    const/16 v26, 0x0

    .line 25
    .line 26
    const/4 v9, 0x0

    .line 27
    const/4 v10, 0x0

    .line 28
    const/4 v11, 0x0

    .line 29
    const/4 v12, 0x0

    .line 30
    const/4 v14, 0x0

    .line 31
    const/4 v15, 0x0

    .line 32
    const/16 v16, 0x0

    .line 33
    .line 34
    const/16 v17, 0x0

    .line 35
    .line 36
    const/16 v18, 0x0

    .line 37
    .line 38
    const/16 v19, 0x0

    .line 39
    .line 40
    const/16 v20, 0x0

    .line 41
    .line 42
    const/16 v21, 0x0

    .line 43
    .line 44
    const/16 v22, 0x0

    .line 45
    .line 46
    const/16 v23, 0x0

    .line 47
    .line 48
    const/16 v24, 0x0

    .line 49
    .line 50
    move-object/from16 v8, p0

    .line 51
    .line 52
    invoke-static/range {v8 .. v26}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->copy$default(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;ILjava/lang/String;Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method

.method public final toDisplayString(Landroid/content/Context;)Landroid/text/SpannableStringBuilder;
    .locals 8
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    const v1, 0x7f130060

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getAppParts()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-instance v6, Lou;

    .line 24
    .line 25
    const/4 v3, 0x5

    .line 26
    invoke-direct {v6, v3}, Lou;-><init>(I)V

    .line 27
    .line 28
    .line 29
    const/16 v7, 0x1f

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x0

    .line 34
    invoke-static/range {v2 .. v7}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    const v1, 0x7f1300ab

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getLocations()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    new-instance v6, Lsl;

    .line 56
    .line 57
    const/4 v3, 0x6

    .line 58
    invoke-direct {v6, v3}, Lsl;-><init>(I)V

    .line 59
    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    invoke-static/range {v2 .. v7}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getLocations()Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v1}, Lji8;->r(Ljava/util/Collection;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_0

    .line 78
    .line 79
    const v1, 0x7f13055d

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getSyncOption()Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;->toDisplayString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    :cond_0
    const-string p0, ". . ."

    .line 101
    .line 102
    const-string v1, ""

    .line 103
    .line 104
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    new-instance p0, Landroid/text/SpannableStringBuilder;

    .line 108
    .line 109
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-static {p1}, Lsz8;->z(Landroid/content/Context;)I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    invoke-static {p1}, Lsz8;->A(Landroid/content/Context;)I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    const/4 v2, 0x0

    .line 129
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-eqz v3, :cond_4

    .line 134
    .line 135
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    add-int/lit8 v4, v2, 0x1

    .line 140
    .line 141
    if-ltz v2, :cond_3

    .line 142
    .line 143
    check-cast v3, Ljava/util/Map$Entry;

    .line 144
    .line 145
    if-lez v2, :cond_1

    .line 146
    .line 147
    const-string v2, "\n"

    .line 148
    .line 149
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 150
    .line 151
    .line 152
    :cond_1
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    .line 153
    .line 154
    invoke-direct {v2, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    check-cast v6, Ljava/lang/CharSequence;

    .line 166
    .line 167
    invoke-virtual {p0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    const/16 v7, 0x11

    .line 175
    .line 176
    invoke-virtual {p0, v2, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 177
    .line 178
    .line 179
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    check-cast v2, Ljava/lang/CharSequence;

    .line 184
    .line 185
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    if-lez v2, :cond_2

    .line 190
    .line 191
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    .line 192
    .line 193
    invoke-direct {v2, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    const-string v6, ": "

    .line 201
    .line 202
    invoke-virtual {p0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    check-cast v3, Ljava/lang/CharSequence;

    .line 211
    .line 212
    invoke-virtual {v6, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    invoke-virtual {p0, v2, v5, v3, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 220
    .line 221
    .line 222
    :cond_2
    move v2, v4

    .line 223
    goto :goto_0

    .line 224
    :cond_3
    invoke-static {}, Lfl1;->F0()V

    .line 225
    .line 226
    .line 227
    const/4 p0, 0x0

    .line 228
    throw p0

    .line 229
    :cond_4
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->version:I

    .line 4
    .line 5
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->id:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->applyData:Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;

    .line 8
    .line 9
    iget-object v4, v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_appParts:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_locations:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_syncOption:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_backupLimits:Ljava/util/List;

    .line 16
    .line 17
    iget-object v8, v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_archiveBackup:Ljava/lang/Integer;

    .line 18
    .line 19
    iget-object v9, v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_multipleBackupStrategy:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 20
    .line 21
    iget-object v10, v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_restorePermissionsMode:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v11, v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_restoreSpecialPermissions:Ljava/lang/Integer;

    .line 24
    .line 25
    iget-object v12, v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_restoreSsaid:Ljava/lang/Integer;

    .line 26
    .line 27
    iget-object v13, v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_compressionLevel:Ljava/lang/Integer;

    .line 28
    .line 29
    iget-object v14, v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_cacheBackup:Ljava/lang/Integer;

    .line 30
    .line 31
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_isForceRedo:Ljava/lang/Integer;

    .line 32
    .line 33
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_enabled:Ljava/lang/Integer;

    .line 34
    .line 35
    move-object/from16 p0, v0

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    move-object/from16 v16, v15

    .line 40
    .line 41
    const-string v15, "ConfigSettings(version="

    .line 42
    .line 43
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v1, ", id="

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, ", applyData="

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v1, ", _appParts="

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", _locations="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, ", _syncOption="

    .line 79
    .line 80
    const-string v2, ", _backupLimits="

    .line 81
    .line 82
    invoke-static {v0, v5, v1, v6, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v1, ", _archiveBackup="

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", _multipleBackupStrategy="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v1, ", _restorePermissionsMode="

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v1, ", _restoreSpecialPermissions="

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v1, ", _restoreSsaid="

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v1, ", _compressionLevel="

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v1, ", _cacheBackup="

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v1, ", _isForceRedo="

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    move-object/from16 v1, v16

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v1, ", _enabled="

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    move-object/from16 v1, p0

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v1, ")"

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->version:I

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->id:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->applyData:Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1, p2}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_appParts:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_locations:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_syncOption:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_backupLimits:Ljava/util/List;

    .line 46
    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_2

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;

    .line 78
    .line 79
    invoke-virtual {v3, p1, p2}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_archiveBackup:Ljava/lang/Integer;

    .line 84
    .line 85
    if-nez v0, :cond_3

    .line 86
    .line 87
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_3
    invoke-static {p1, v1, v0}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 92
    .line 93
    .line 94
    :goto_3
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_multipleBackupStrategy:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 95
    .line 96
    if-nez v0, :cond_4

    .line 97
    .line 98
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, p1, p2}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->writeToParcel(Landroid/os/Parcel;I)V

    .line 106
    .line 107
    .line 108
    :goto_4
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_restorePermissionsMode:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_restoreSpecialPermissions:Ljava/lang/Integer;

    .line 114
    .line 115
    if-nez p2, :cond_5

    .line 116
    .line 117
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    .line 119
    .line 120
    goto :goto_5

    .line 121
    :cond_5
    invoke-static {p1, v1, p2}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 122
    .line 123
    .line 124
    :goto_5
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_restoreSsaid:Ljava/lang/Integer;

    .line 125
    .line 126
    if-nez p2, :cond_6

    .line 127
    .line 128
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    .line 130
    .line 131
    goto :goto_6

    .line 132
    :cond_6
    invoke-static {p1, v1, p2}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 133
    .line 134
    .line 135
    :goto_6
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_compressionLevel:Ljava/lang/Integer;

    .line 136
    .line 137
    if-nez p2, :cond_7

    .line 138
    .line 139
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    .line 141
    .line 142
    goto :goto_7

    .line 143
    :cond_7
    invoke-static {p1, v1, p2}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 144
    .line 145
    .line 146
    :goto_7
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_cacheBackup:Ljava/lang/Integer;

    .line 147
    .line 148
    if-nez p2, :cond_8

    .line 149
    .line 150
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    .line 152
    .line 153
    goto :goto_8

    .line 154
    :cond_8
    invoke-static {p1, v1, p2}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 155
    .line 156
    .line 157
    :goto_8
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_isForceRedo:Ljava/lang/Integer;

    .line 158
    .line 159
    if-nez p2, :cond_9

    .line 160
    .line 161
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    .line 163
    .line 164
    goto :goto_9

    .line 165
    :cond_9
    invoke-static {p1, v1, p2}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 166
    .line 167
    .line 168
    :goto_9
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->_enabled:Ljava/lang/Integer;

    .line 169
    .line 170
    if-nez p0, :cond_a

    .line 171
    .line 172
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :cond_a
    invoke-static {p1, v1, p0}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 177
    .line 178
    .line 179
    return-void
.end method
