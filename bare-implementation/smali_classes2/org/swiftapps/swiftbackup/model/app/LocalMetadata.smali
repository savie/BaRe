.class public final Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/swiftapps/swiftbackup/model/app/LocalMetadata$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lorg/swiftapps/swiftbackup/model/app/LocalMetadata$a;

.field public static final SB_VERSION_CODE_REQUIRED:J = 0x244L

.field public static final SB_VERSION_NAME_REQUIRED:Ljava/lang/String; = "v5.0.0"


# instance fields
.field private _note:Ljava/lang/String;

.field private _protectedBackup:Ljava/lang/Boolean;

.field private accessibilityComponent:Ljava/lang/String;

.field private apkBackupDate:Ljava/lang/Long;

.field private apkBackupSize:Ljava/lang/Long;

.field private apkSBVersionCodeRequired:Ljava/lang/Long;

.field private apkSBVersionNameRequired:Ljava/lang/String;

.field private dataBackupDate:Ljava/lang/Long;

.field private dataBackupSize:Ljava/lang/Long;

.field private dataEncryptionMethod:Ljava/lang/String;

.field private dataPasswordHash:Ljava/lang/String;

.field private dataSBVersionCodeRequired:Ljava/lang/Long;

.field private dataSBVersionNameRequired:Ljava/lang/String;

.field private dataSizeMirrored:Ljava/lang/Long;

.field private dateBackup:Ljava/lang/Long;

.field private dateBackupUpdated:Ljava/lang/Long;

.field private expBackupSize:Ljava/lang/Long;

.field private expSBVersionCodeRequired:Ljava/lang/Long;

.field private expSBVersionNameRequired:Ljava/lang/String;

.field private expSizeMirrored:Ljava/lang/Long;

.field private expansionBackupDate:Ljava/lang/Long;

.field private extDataBackupDate:Ljava/lang/Long;

.field private extDataBackupSize:Ljava/lang/Long;

.field private extDataEncryptionMethod:Ljava/lang/String;

.field private extDataPasswordHash:Ljava/lang/String;

.field private extDataSBVersionCodeRequired:Ljava/lang/Long;

.field private extDataSBVersionNameRequired:Ljava/lang/String;

.field private extDataSizeMirrored:Ljava/lang/Long;

.field private installerPackage:Ljava/lang/String;

.field private isDataEncrypted:Ljava/lang/Boolean;

.field private isExtDataEncrypted:Ljava/lang/Boolean;

.field private isMediaEncrypted:Ljava/lang/Boolean;

.field private keyVersion:Ljava/lang/Integer;

.field private mediaBackupDate:Ljava/lang/Long;

.field private mediaBackupSize:Ljava/lang/Long;

.field private mediaEncryptionMethod:Ljava/lang/String;

.field private mediaPasswordHash:Ljava/lang/String;

.field private mediaSBVersionCodeRequired:Ljava/lang/Long;

.field private mediaSBVersionNameRequired:Ljava/lang/String;

.field private mediaSizeMirrored:Ljava/lang/Long;

.field private name:Ljava/lang/String;

.field private ntfAccessComponent:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private permissionIdsCsv:Ljava/lang/String;

.field private permissionStatesCsv:Ljava/lang/String;

.field private sharedLibsBackupSize:Ljava/lang/Long;

.field private sharedLibsSBVersionCodeRequired:Ljava/lang/Long;

.field private sharedLibsSBVersionNameRequired:Ljava/lang/String;

.field private sharedLibsSizeMirrored:Ljava/lang/Long;

.field private splitsBackupSize:Ljava/lang/Long;

.field private splitsSBVersionCodeRequired:Ljava/lang/Long;

.field private splitsSBVersionNameRequired:Ljava/lang/String;

.field private splitsSizeMirrored:Ljava/lang/Long;

.field private ssaid:Ljava/lang/String;

.field private versionCode:Ljava/lang/Long;

.field private versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->Companion:Lorg/swiftapps/swiftbackup/model/app/LocalMetadata$a;

    .line 8
    .line 9
    new-instance v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata$b;

    .line 10
    .line 11
    invoke-direct {v0}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata$b;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 60

    .line 59
    const v58, 0xffffff

    const/16 v59, 0x0

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

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, -0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v59}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->packageName:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->name:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dateBackup:Ljava/lang/Long;

    .line 6
    iput-object p4, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dateBackupUpdated:Ljava/lang/Long;

    .line 7
    iput-object p5, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->versionName:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->versionCode:Ljava/lang/Long;

    .line 9
    iput-object p7, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkBackupSize:Ljava/lang/Long;

    .line 10
    iput-object p8, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkBackupDate:Ljava/lang/Long;

    .line 11
    iput-object p9, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkSBVersionCodeRequired:Ljava/lang/Long;

    .line 12
    iput-object p10, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkSBVersionNameRequired:Ljava/lang/String;

    .line 13
    iput-object p11, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsBackupSize:Ljava/lang/Long;

    .line 14
    iput-object p12, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsSizeMirrored:Ljava/lang/Long;

    .line 15
    iput-object p13, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsSBVersionCodeRequired:Ljava/lang/Long;

    .line 16
    iput-object p14, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsSBVersionNameRequired:Ljava/lang/String;

    .line 17
    iput-object p15, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsBackupSize:Ljava/lang/Long;

    move-object/from16 p1, p16

    .line 18
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsSizeMirrored:Ljava/lang/Long;

    move-object/from16 p1, p17

    .line 19
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsSBVersionCodeRequired:Ljava/lang/Long;

    move-object/from16 p1, p18

    .line 20
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsSBVersionNameRequired:Ljava/lang/String;

    move-object/from16 p1, p19

    .line 21
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataBackupSize:Ljava/lang/Long;

    move-object/from16 p1, p20

    .line 22
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataSizeMirrored:Ljava/lang/Long;

    move-object/from16 p1, p21

    .line 23
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isDataEncrypted:Ljava/lang/Boolean;

    move-object/from16 p1, p22

    .line 24
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataEncryptionMethod:Ljava/lang/String;

    move-object/from16 p1, p23

    .line 25
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataPasswordHash:Ljava/lang/String;

    move-object/from16 p1, p24

    .line 26
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataBackupDate:Ljava/lang/Long;

    move-object/from16 p1, p25

    .line 27
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataSBVersionCodeRequired:Ljava/lang/Long;

    move-object/from16 p1, p26

    .line 28
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataSBVersionNameRequired:Ljava/lang/String;

    move-object/from16 p1, p27

    .line 29
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataBackupSize:Ljava/lang/Long;

    move-object/from16 p1, p28

    .line 30
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataSizeMirrored:Ljava/lang/Long;

    move-object/from16 p1, p29

    .line 31
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isExtDataEncrypted:Ljava/lang/Boolean;

    move-object/from16 p1, p30

    .line 32
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataEncryptionMethod:Ljava/lang/String;

    move-object/from16 p1, p31

    .line 33
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataPasswordHash:Ljava/lang/String;

    move-object/from16 p1, p32

    .line 34
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataBackupDate:Ljava/lang/Long;

    move-object/from16 p1, p33

    .line 35
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataSBVersionCodeRequired:Ljava/lang/Long;

    move-object/from16 p1, p34

    .line 36
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataSBVersionNameRequired:Ljava/lang/String;

    move-object/from16 p1, p35

    .line 37
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expBackupSize:Ljava/lang/Long;

    move-object/from16 p1, p36

    .line 38
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expSizeMirrored:Ljava/lang/Long;

    move-object/from16 p1, p37

    .line 39
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expansionBackupDate:Ljava/lang/Long;

    move-object/from16 p1, p38

    .line 40
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expSBVersionCodeRequired:Ljava/lang/Long;

    move-object/from16 p1, p39

    .line 41
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expSBVersionNameRequired:Ljava/lang/String;

    move-object/from16 p1, p40

    .line 42
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaBackupSize:Ljava/lang/Long;

    move-object/from16 p1, p41

    .line 43
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaSizeMirrored:Ljava/lang/Long;

    move-object/from16 p1, p42

    .line 44
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isMediaEncrypted:Ljava/lang/Boolean;

    move-object/from16 p1, p43

    .line 45
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaEncryptionMethod:Ljava/lang/String;

    move-object/from16 p1, p44

    .line 46
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaPasswordHash:Ljava/lang/String;

    move-object/from16 p1, p45

    .line 47
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaBackupDate:Ljava/lang/Long;

    move-object/from16 p1, p46

    .line 48
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaSBVersionCodeRequired:Ljava/lang/Long;

    move-object/from16 p1, p47

    .line 49
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaSBVersionNameRequired:Ljava/lang/String;

    move-object/from16 p1, p48

    .line 50
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->permissionIdsCsv:Ljava/lang/String;

    move-object/from16 p1, p49

    .line 51
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->permissionStatesCsv:Ljava/lang/String;

    move-object/from16 p1, p50

    .line 52
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->ntfAccessComponent:Ljava/lang/String;

    move-object/from16 p1, p51

    .line 53
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->accessibilityComponent:Ljava/lang/String;

    move-object/from16 p1, p52

    .line 54
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->ssaid:Ljava/lang/String;

    move-object/from16 p1, p53

    .line 55
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->installerPackage:Ljava/lang/String;

    move-object/from16 p1, p54

    .line 56
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->_protectedBackup:Ljava/lang/Boolean;

    move-object/from16 p1, p55

    .line 57
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->_note:Ljava/lang/String;

    move-object/from16 p1, p56

    .line 58
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->keyVersion:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 48

    move/from16 v0, p57

    move/from16 v1, p58

    and-int/lit8 v2, v0, 0x1

    .line 1
    const-string v3, ""

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_1

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
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v6, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    const/4 v11, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v11, p9

    :goto_8
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_9

    const/4 v12, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v12, p10

    :goto_9
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_a

    const/4 v13, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v13, p11

    :goto_a
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_b

    const/4 v14, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v14, p12

    :goto_b
    and-int/lit16 v15, v0, 0x1000

    if-eqz v15, :cond_c

    const/4 v15, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v15, p13

    :goto_c
    and-int/lit16 v5, v0, 0x2000

    if-eqz v5, :cond_d

    const/4 v5, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v5, p14

    :goto_d
    move-object/from16 p59, v2

    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v17, v0, v16

    if-eqz v17, :cond_f

    const/16 v17, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v17, p16

    :goto_f
    const/high16 v18, 0x10000

    and-int v19, v0, v18

    if-eqz v19, :cond_10

    const/16 v19, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v19, p17

    :goto_10
    const/high16 v20, 0x20000

    and-int v21, v0, v20

    if-eqz v21, :cond_11

    const/16 v21, 0x0

    goto :goto_11

    :cond_11
    move-object/from16 v21, p18

    :goto_11
    const/high16 v22, 0x40000

    and-int v23, v0, v22

    if-eqz v23, :cond_12

    const/16 v23, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v23, p19

    :goto_12
    const/high16 v24, 0x80000

    and-int v25, v0, v24

    if-eqz v25, :cond_13

    const/16 v25, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v25, p20

    :goto_13
    const/high16 v26, 0x100000

    and-int v26, v0, v26

    if-eqz v26, :cond_14

    const/16 v26, 0x0

    goto :goto_14

    :cond_14
    move-object/from16 v26, p21

    :goto_14
    const/high16 v27, 0x200000

    and-int v27, v0, v27

    if-eqz v27, :cond_15

    const/16 v27, 0x0

    goto :goto_15

    :cond_15
    move-object/from16 v27, p22

    :goto_15
    const/high16 v28, 0x400000

    and-int v28, v0, v28

    if-eqz v28, :cond_16

    const/16 v28, 0x0

    goto :goto_16

    :cond_16
    move-object/from16 v28, p23

    :goto_16
    const/high16 v29, 0x800000

    and-int v29, v0, v29

    if-eqz v29, :cond_17

    const/16 v29, 0x0

    goto :goto_17

    :cond_17
    move-object/from16 v29, p24

    :goto_17
    const/high16 v30, 0x1000000

    and-int v30, v0, v30

    if-eqz v30, :cond_18

    const/16 v30, 0x0

    goto :goto_18

    :cond_18
    move-object/from16 v30, p25

    :goto_18
    const/high16 v31, 0x2000000

    and-int v31, v0, v31

    if-eqz v31, :cond_19

    const/16 v31, 0x0

    goto :goto_19

    :cond_19
    move-object/from16 v31, p26

    :goto_19
    const/high16 v32, 0x4000000

    and-int v32, v0, v32

    if-eqz v32, :cond_1a

    const/16 v32, 0x0

    goto :goto_1a

    :cond_1a
    move-object/from16 v32, p27

    :goto_1a
    const/high16 v33, 0x8000000

    and-int v33, v0, v33

    if-eqz v33, :cond_1b

    const/16 v33, 0x0

    goto :goto_1b

    :cond_1b
    move-object/from16 v33, p28

    :goto_1b
    const/high16 v34, 0x10000000

    and-int v34, v0, v34

    if-eqz v34, :cond_1c

    const/16 v34, 0x0

    goto :goto_1c

    :cond_1c
    move-object/from16 v34, p29

    :goto_1c
    const/high16 v35, 0x20000000

    and-int v35, v0, v35

    if-eqz v35, :cond_1d

    const/16 v35, 0x0

    goto :goto_1d

    :cond_1d
    move-object/from16 v35, p30

    :goto_1d
    const/high16 v36, 0x40000000    # 2.0f

    and-int v36, v0, v36

    if-eqz v36, :cond_1e

    const/16 v36, 0x0

    goto :goto_1e

    :cond_1e
    move-object/from16 v36, p31

    :goto_1e
    const/high16 v37, -0x80000000

    and-int v0, v0, v37

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    goto :goto_1f

    :cond_1f
    move-object/from16 v0, p32

    :goto_1f
    and-int/lit8 v37, v1, 0x1

    if-eqz v37, :cond_20

    const/16 v37, 0x0

    goto :goto_20

    :cond_20
    move-object/from16 v37, p33

    :goto_20
    and-int/lit8 v38, v1, 0x2

    if-eqz v38, :cond_21

    const/16 v38, 0x0

    goto :goto_21

    :cond_21
    move-object/from16 v38, p34

    :goto_21
    and-int/lit8 v39, v1, 0x4

    if-eqz v39, :cond_22

    const/16 v39, 0x0

    goto :goto_22

    :cond_22
    move-object/from16 v39, p35

    :goto_22
    and-int/lit8 v40, v1, 0x8

    if-eqz v40, :cond_23

    const/16 v40, 0x0

    goto :goto_23

    :cond_23
    move-object/from16 v40, p36

    :goto_23
    and-int/lit8 v41, v1, 0x10

    if-eqz v41, :cond_24

    const/16 v41, 0x0

    goto :goto_24

    :cond_24
    move-object/from16 v41, p37

    :goto_24
    and-int/lit8 v42, v1, 0x20

    if-eqz v42, :cond_25

    const/16 v42, 0x0

    goto :goto_25

    :cond_25
    move-object/from16 v42, p38

    :goto_25
    and-int/lit8 v43, v1, 0x40

    if-eqz v43, :cond_26

    const/16 v43, 0x0

    goto :goto_26

    :cond_26
    move-object/from16 v43, p39

    :goto_26
    move-object/from16 p2, v0

    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    goto :goto_27

    :cond_27
    move-object/from16 v0, p40

    :goto_27
    move-object/from16 p3, v0

    and-int/lit16 v0, v1, 0x100

    if-eqz v0, :cond_28

    const/4 v0, 0x0

    goto :goto_28

    :cond_28
    move-object/from16 v0, p41

    :goto_28
    move-object/from16 p4, v0

    and-int/lit16 v0, v1, 0x200

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    goto :goto_29

    :cond_29
    move-object/from16 v0, p42

    :goto_29
    move-object/from16 p5, v0

    and-int/lit16 v0, v1, 0x400

    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    goto :goto_2a

    :cond_2a
    move-object/from16 v0, p43

    :goto_2a
    move-object/from16 p6, v0

    and-int/lit16 v0, v1, 0x800

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    goto :goto_2b

    :cond_2b
    move-object/from16 v0, p44

    :goto_2b
    move-object/from16 p7, v0

    and-int/lit16 v0, v1, 0x1000

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    goto :goto_2c

    :cond_2c
    move-object/from16 v0, p45

    :goto_2c
    move-object/from16 p8, v0

    and-int/lit16 v0, v1, 0x2000

    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    goto :goto_2d

    :cond_2d
    move-object/from16 v0, p46

    :goto_2d
    move-object/from16 p9, v0

    and-int/lit16 v0, v1, 0x4000

    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    goto :goto_2e

    :cond_2e
    move-object/from16 v0, p47

    :goto_2e
    and-int v16, v1, v16

    if-eqz v16, :cond_2f

    const/16 v16, 0x0

    goto :goto_2f

    :cond_2f
    move-object/from16 v16, p48

    :goto_2f
    and-int v18, v1, v18

    if-eqz v18, :cond_30

    const/16 v18, 0x0

    goto :goto_30

    :cond_30
    move-object/from16 v18, p49

    :goto_30
    and-int v20, v1, v20

    if-eqz v20, :cond_31

    const/16 v20, 0x0

    goto :goto_31

    :cond_31
    move-object/from16 v20, p50

    :goto_31
    and-int v22, v1, v22

    if-eqz v22, :cond_32

    const/16 v22, 0x0

    goto :goto_32

    :cond_32
    move-object/from16 v22, p51

    :goto_32
    and-int v24, v1, v24

    if-eqz v24, :cond_33

    const/16 v24, 0x0

    goto :goto_33

    :cond_33
    move-object/from16 v24, p52

    :goto_33
    const/high16 v44, 0x100000

    and-int v44, v1, v44

    if-eqz v44, :cond_34

    const/16 v44, 0x0

    goto :goto_34

    :cond_34
    move-object/from16 v44, p53

    :goto_34
    const/high16 v45, 0x200000

    and-int v45, v1, v45

    if-eqz v45, :cond_35

    const/16 v45, 0x0

    goto :goto_35

    :cond_35
    move-object/from16 v45, p54

    :goto_35
    const/high16 v46, 0x400000

    and-int v46, v1, v46

    if-eqz v46, :cond_36

    const/16 v46, 0x0

    goto :goto_36

    :cond_36
    move-object/from16 v46, p55

    :goto_36
    const/high16 v47, 0x800000

    and-int v1, v1, v47

    if-eqz v1, :cond_37

    const/16 p57, 0x0

    :goto_37
    move-object/from16 p1, p0

    move-object/from16 p33, p2

    move-object/from16 p41, p3

    move-object/from16 p42, p4

    move-object/from16 p43, p5

    move-object/from16 p44, p6

    move-object/from16 p45, p7

    move-object/from16 p46, p8

    move-object/from16 p47, p9

    move-object/from16 p2, p59

    move-object/from16 p48, v0

    move-object/from16 p16, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p15, v5

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

    move-object/from16 p49, v16

    move-object/from16 p17, v17

    move-object/from16 p50, v18

    move-object/from16 p18, v19

    move-object/from16 p51, v20

    move-object/from16 p19, v21

    move-object/from16 p52, v22

    move-object/from16 p20, v23

    move-object/from16 p53, v24

    move-object/from16 p21, v25

    move-object/from16 p22, v26

    move-object/from16 p23, v27

    move-object/from16 p24, v28

    move-object/from16 p25, v29

    move-object/from16 p26, v30

    move-object/from16 p27, v31

    move-object/from16 p28, v32

    move-object/from16 p29, v33

    move-object/from16 p30, v34

    move-object/from16 p31, v35

    move-object/from16 p32, v36

    move-object/from16 p34, v37

    move-object/from16 p35, v38

    move-object/from16 p36, v39

    move-object/from16 p37, v40

    move-object/from16 p38, v41

    move-object/from16 p39, v42

    move-object/from16 p40, v43

    move-object/from16 p54, v44

    move-object/from16 p55, v45

    move-object/from16 p56, v46

    goto :goto_38

    :cond_37
    move-object/from16 p57, p56

    goto :goto_37

    :goto_38
    invoke-direct/range {p1 .. p57}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;IILjava/lang/Object;)Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p57

    move/from16 v2, p58

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_0

    iget-object v3, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v4, p2

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dateBackup:Ljava/lang/Long;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p3

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dateBackupUpdated:Ljava/lang/Long;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p4

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->versionName:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->versionCode:Ljava/lang/Long;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkBackupSize:Ljava/lang/Long;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkBackupDate:Ljava/lang/Long;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkSBVersionCodeRequired:Ljava/lang/Long;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p9

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-object v12, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkSBVersionNameRequired:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p10

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget-object v13, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsBackupSize:Ljava/lang/Long;

    goto :goto_a

    :cond_a
    move-object/from16 v13, p11

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget-object v14, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsSizeMirrored:Ljava/lang/Long;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p12

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsSBVersionCodeRequired:Ljava/lang/Long;

    goto :goto_c

    :cond_c
    move-object/from16 v15, p13

    :goto_c
    move-object/from16 p1, v3

    and-int/lit16 v3, v1, 0x2000

    if-eqz v3, :cond_d

    iget-object v3, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsSBVersionNameRequired:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v3, p14

    :goto_d
    move-object/from16 p2, v3

    and-int/lit16 v3, v1, 0x4000

    if-eqz v3, :cond_e

    iget-object v3, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsBackupSize:Ljava/lang/Long;

    goto :goto_e

    :cond_e
    move-object/from16 v3, p15

    :goto_e
    const v16, 0x8000

    and-int v17, v1, v16

    if-eqz v17, :cond_f

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsSizeMirrored:Ljava/lang/Long;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v18, p57, v17

    move-object/from16 p3, v1

    if-eqz v18, :cond_10

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsSBVersionCodeRequired:Ljava/lang/Long;

    goto :goto_10

    :cond_10
    move-object/from16 v1, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v19, p57, v18

    move-object/from16 p4, v1

    if-eqz v19, :cond_11

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsSBVersionNameRequired:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v1, p18

    :goto_11
    const/high16 v19, 0x40000

    and-int v20, p57, v19

    move-object/from16 p5, v1

    if-eqz v20, :cond_12

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataBackupSize:Ljava/lang/Long;

    goto :goto_12

    :cond_12
    move-object/from16 v1, p19

    :goto_12
    const/high16 v20, 0x80000

    and-int v21, p57, v20

    move-object/from16 p6, v1

    if-eqz v21, :cond_13

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataSizeMirrored:Ljava/lang/Long;

    goto :goto_13

    :cond_13
    move-object/from16 v1, p20

    :goto_13
    const/high16 v21, 0x100000

    and-int v22, p57, v21

    move-object/from16 p7, v1

    if-eqz v22, :cond_14

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isDataEncrypted:Ljava/lang/Boolean;

    goto :goto_14

    :cond_14
    move-object/from16 v1, p21

    :goto_14
    const/high16 v22, 0x200000

    and-int v23, p57, v22

    move-object/from16 p8, v1

    if-eqz v23, :cond_15

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataEncryptionMethod:Ljava/lang/String;

    goto :goto_15

    :cond_15
    move-object/from16 v1, p22

    :goto_15
    const/high16 v23, 0x400000

    and-int v23, p57, v23

    move-object/from16 p9, v1

    if-eqz v23, :cond_16

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataPasswordHash:Ljava/lang/String;

    goto :goto_16

    :cond_16
    move-object/from16 v1, p23

    :goto_16
    const/high16 v23, 0x800000

    and-int v23, p57, v23

    move-object/from16 p10, v1

    if-eqz v23, :cond_17

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataBackupDate:Ljava/lang/Long;

    goto :goto_17

    :cond_17
    move-object/from16 v1, p24

    :goto_17
    const/high16 v23, 0x1000000

    and-int v23, p57, v23

    move-object/from16 p11, v1

    if-eqz v23, :cond_18

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataSBVersionCodeRequired:Ljava/lang/Long;

    goto :goto_18

    :cond_18
    move-object/from16 v1, p25

    :goto_18
    const/high16 v23, 0x2000000

    and-int v23, p57, v23

    move-object/from16 p12, v1

    if-eqz v23, :cond_19

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataSBVersionNameRequired:Ljava/lang/String;

    goto :goto_19

    :cond_19
    move-object/from16 v1, p26

    :goto_19
    const/high16 v23, 0x4000000

    and-int v23, p57, v23

    move-object/from16 p13, v1

    if-eqz v23, :cond_1a

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataBackupSize:Ljava/lang/Long;

    goto :goto_1a

    :cond_1a
    move-object/from16 v1, p27

    :goto_1a
    const/high16 v23, 0x8000000

    and-int v23, p57, v23

    move-object/from16 p14, v1

    if-eqz v23, :cond_1b

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataSizeMirrored:Ljava/lang/Long;

    goto :goto_1b

    :cond_1b
    move-object/from16 v1, p28

    :goto_1b
    const/high16 v23, 0x10000000

    and-int v23, p57, v23

    move-object/from16 p15, v1

    if-eqz v23, :cond_1c

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isExtDataEncrypted:Ljava/lang/Boolean;

    goto :goto_1c

    :cond_1c
    move-object/from16 v1, p29

    :goto_1c
    const/high16 v23, 0x20000000

    and-int v23, p57, v23

    move-object/from16 p16, v1

    if-eqz v23, :cond_1d

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataEncryptionMethod:Ljava/lang/String;

    goto :goto_1d

    :cond_1d
    move-object/from16 v1, p30

    :goto_1d
    const/high16 v23, 0x40000000    # 2.0f

    and-int v23, p57, v23

    move-object/from16 p17, v1

    if-eqz v23, :cond_1e

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataPasswordHash:Ljava/lang/String;

    goto :goto_1e

    :cond_1e
    move-object/from16 v1, p31

    :goto_1e
    const/high16 v23, -0x80000000

    and-int v23, p57, v23

    move-object/from16 p18, v1

    if-eqz v23, :cond_1f

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataBackupDate:Ljava/lang/Long;

    goto :goto_1f

    :cond_1f
    move-object/from16 v1, p32

    :goto_1f
    and-int/lit8 v23, v2, 0x1

    move-object/from16 p19, v1

    if-eqz v23, :cond_20

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataSBVersionCodeRequired:Ljava/lang/Long;

    goto :goto_20

    :cond_20
    move-object/from16 v1, p33

    :goto_20
    and-int/lit8 v23, v2, 0x2

    move-object/from16 p20, v1

    if-eqz v23, :cond_21

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataSBVersionNameRequired:Ljava/lang/String;

    goto :goto_21

    :cond_21
    move-object/from16 v1, p34

    :goto_21
    and-int/lit8 v23, v2, 0x4

    move-object/from16 p21, v1

    if-eqz v23, :cond_22

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expBackupSize:Ljava/lang/Long;

    goto :goto_22

    :cond_22
    move-object/from16 v1, p35

    :goto_22
    and-int/lit8 v23, v2, 0x8

    move-object/from16 p22, v1

    if-eqz v23, :cond_23

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expSizeMirrored:Ljava/lang/Long;

    goto :goto_23

    :cond_23
    move-object/from16 v1, p36

    :goto_23
    and-int/lit8 v23, v2, 0x10

    move-object/from16 p23, v1

    if-eqz v23, :cond_24

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expansionBackupDate:Ljava/lang/Long;

    goto :goto_24

    :cond_24
    move-object/from16 v1, p37

    :goto_24
    and-int/lit8 v23, v2, 0x20

    move-object/from16 p24, v1

    if-eqz v23, :cond_25

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expSBVersionCodeRequired:Ljava/lang/Long;

    goto :goto_25

    :cond_25
    move-object/from16 v1, p38

    :goto_25
    and-int/lit8 v23, v2, 0x40

    move-object/from16 p25, v1

    if-eqz v23, :cond_26

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expSBVersionNameRequired:Ljava/lang/String;

    goto :goto_26

    :cond_26
    move-object/from16 v1, p39

    :goto_26
    move-object/from16 p26, v1

    and-int/lit16 v1, v2, 0x80

    if-eqz v1, :cond_27

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaBackupSize:Ljava/lang/Long;

    goto :goto_27

    :cond_27
    move-object/from16 v1, p40

    :goto_27
    move-object/from16 p27, v1

    and-int/lit16 v1, v2, 0x100

    if-eqz v1, :cond_28

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaSizeMirrored:Ljava/lang/Long;

    goto :goto_28

    :cond_28
    move-object/from16 v1, p41

    :goto_28
    move-object/from16 p28, v1

    and-int/lit16 v1, v2, 0x200

    if-eqz v1, :cond_29

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isMediaEncrypted:Ljava/lang/Boolean;

    goto :goto_29

    :cond_29
    move-object/from16 v1, p42

    :goto_29
    move-object/from16 p29, v1

    and-int/lit16 v1, v2, 0x400

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaEncryptionMethod:Ljava/lang/String;

    goto :goto_2a

    :cond_2a
    move-object/from16 v1, p43

    :goto_2a
    move-object/from16 p30, v1

    and-int/lit16 v1, v2, 0x800

    if-eqz v1, :cond_2b

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaPasswordHash:Ljava/lang/String;

    goto :goto_2b

    :cond_2b
    move-object/from16 v1, p44

    :goto_2b
    move-object/from16 p31, v1

    and-int/lit16 v1, v2, 0x1000

    if-eqz v1, :cond_2c

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaBackupDate:Ljava/lang/Long;

    goto :goto_2c

    :cond_2c
    move-object/from16 v1, p45

    :goto_2c
    move-object/from16 p32, v1

    and-int/lit16 v1, v2, 0x2000

    if-eqz v1, :cond_2d

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaSBVersionCodeRequired:Ljava/lang/Long;

    goto :goto_2d

    :cond_2d
    move-object/from16 v1, p46

    :goto_2d
    move-object/from16 p33, v1

    and-int/lit16 v1, v2, 0x4000

    if-eqz v1, :cond_2e

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaSBVersionNameRequired:Ljava/lang/String;

    goto :goto_2e

    :cond_2e
    move-object/from16 v1, p47

    :goto_2e
    and-int v16, v2, v16

    move-object/from16 p34, v1

    if-eqz v16, :cond_2f

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->permissionIdsCsv:Ljava/lang/String;

    goto :goto_2f

    :cond_2f
    move-object/from16 v1, p48

    :goto_2f
    and-int v16, v2, v17

    move-object/from16 p35, v1

    if-eqz v16, :cond_30

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->permissionStatesCsv:Ljava/lang/String;

    goto :goto_30

    :cond_30
    move-object/from16 v1, p49

    :goto_30
    and-int v16, v2, v18

    move-object/from16 p36, v1

    if-eqz v16, :cond_31

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->ntfAccessComponent:Ljava/lang/String;

    goto :goto_31

    :cond_31
    move-object/from16 v1, p50

    :goto_31
    and-int v16, v2, v19

    move-object/from16 p37, v1

    if-eqz v16, :cond_32

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->accessibilityComponent:Ljava/lang/String;

    goto :goto_32

    :cond_32
    move-object/from16 v1, p51

    :goto_32
    and-int v16, v2, v20

    move-object/from16 p38, v1

    if-eqz v16, :cond_33

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->ssaid:Ljava/lang/String;

    goto :goto_33

    :cond_33
    move-object/from16 v1, p52

    :goto_33
    and-int v16, v2, v21

    move-object/from16 p39, v1

    if-eqz v16, :cond_34

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->installerPackage:Ljava/lang/String;

    goto :goto_34

    :cond_34
    move-object/from16 v1, p53

    :goto_34
    and-int v16, v2, v22

    move-object/from16 p40, v1

    if-eqz v16, :cond_35

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->_protectedBackup:Ljava/lang/Boolean;

    goto :goto_35

    :cond_35
    move-object/from16 v1, p54

    :goto_35
    const/high16 v16, 0x400000

    and-int v16, v2, v16

    move-object/from16 p41, v1

    if-eqz v16, :cond_36

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->_note:Ljava/lang/String;

    goto :goto_36

    :cond_36
    move-object/from16 v1, p55

    :goto_36
    const/high16 v16, 0x800000

    and-int v2, v2, v16

    if-eqz v2, :cond_37

    iget-object v2, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->keyVersion:Ljava/lang/Integer;

    move-object/from16 p57, v2

    :goto_37
    move-object/from16 p42, p28

    move-object/from16 p43, p29

    move-object/from16 p44, p30

    move-object/from16 p45, p31

    move-object/from16 p46, p32

    move-object/from16 p47, p33

    move-object/from16 p48, p34

    move-object/from16 p49, p35

    move-object/from16 p50, p36

    move-object/from16 p51, p37

    move-object/from16 p52, p38

    move-object/from16 p53, p39

    move-object/from16 p54, p40

    move-object/from16 p55, p41

    move-object/from16 p56, v1

    move-object/from16 p28, p14

    move-object/from16 p29, p15

    move-object/from16 p30, p16

    move-object/from16 p31, p17

    move-object/from16 p32, p18

    move-object/from16 p33, p19

    move-object/from16 p34, p20

    move-object/from16 p35, p21

    move-object/from16 p36, p22

    move-object/from16 p37, p23

    move-object/from16 p38, p24

    move-object/from16 p39, p25

    move-object/from16 p40, p26

    move-object/from16 p41, p27

    move-object/from16 p16, v3

    move-object/from16 p14, v15

    move-object/from16 p15, p2

    move-object/from16 p17, p3

    move-object/from16 p18, p4

    move-object/from16 p19, p5

    move-object/from16 p20, p6

    move-object/from16 p21, p7

    move-object/from16 p22, p8

    move-object/from16 p23, p9

    move-object/from16 p24, p10

    move-object/from16 p25, p11

    move-object/from16 p26, p12

    move-object/from16 p27, p13

    move-object/from16 p3, v4

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

    move-object/from16 p2, p1

    move-object/from16 p1, v0

    goto :goto_38

    :cond_37
    move-object/from16 p57, p56

    goto :goto_37

    :goto_38
    invoke-virtual/range {p1 .. p57}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;)Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final clearSharedLibsDetails()V
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsBackupSize:Ljava/lang/Long;

    .line 3
    .line 4
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsSizeMirrored:Ljava/lang/Long;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsSBVersionCodeRequired:Ljava/lang/Long;

    .line 7
    .line 8
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsSBVersionNameRequired:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public final clearSplitsDetails()V
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsBackupSize:Ljava/lang/Long;

    .line 3
    .line 4
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsSizeMirrored:Ljava/lang/Long;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsSBVersionCodeRequired:Ljava/lang/Long;

    .line 7
    .line 8
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsSBVersionNameRequired:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component10()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component11()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsBackupSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component12()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsSizeMirrored:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component13()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component14()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component15()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsBackupSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component16()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsSizeMirrored:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component17()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component18()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component19()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataBackupSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component20()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataSizeMirrored:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component21()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isDataEncrypted:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component22()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataEncryptionMethod:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component23()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataPasswordHash:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component24()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataBackupDate:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component25()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component26()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component27()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataBackupSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component28()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataSizeMirrored:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component29()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isExtDataEncrypted:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dateBackup:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component30()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataEncryptionMethod:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component31()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataPasswordHash:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component32()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataBackupDate:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component33()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component34()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component35()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expBackupSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component36()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expSizeMirrored:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component37()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expansionBackupDate:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component38()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component39()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component4()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dateBackupUpdated:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component40()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaBackupSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component41()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaSizeMirrored:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component42()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isMediaEncrypted:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component43()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaEncryptionMethod:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component44()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaPasswordHash:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component45()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaBackupDate:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component46()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component47()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component48()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->permissionIdsCsv:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component49()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->permissionStatesCsv:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->versionName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component50()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->ntfAccessComponent:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component51()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->accessibilityComponent:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component52()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->ssaid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component53()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->installerPackage:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component54()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->_protectedBackup:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component55()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->_note:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component56()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->keyVersion:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component6()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->versionCode:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component7()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkBackupSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component8()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkBackupDate:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component9()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;)Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;
    .locals 57

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

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

    move-object/from16 v35, p35

    move-object/from16 v36, p36

    move-object/from16 v37, p37

    move-object/from16 v38, p38

    move-object/from16 v39, p39

    move-object/from16 v40, p40

    move-object/from16 v41, p41

    move-object/from16 v42, p42

    move-object/from16 v43, p43

    move-object/from16 v44, p44

    move-object/from16 v45, p45

    move-object/from16 v46, p46

    move-object/from16 v47, p47

    move-object/from16 v48, p48

    move-object/from16 v49, p49

    move-object/from16 v50, p50

    move-object/from16 v51, p51

    move-object/from16 v52, p52

    move-object/from16 v53, p53

    move-object/from16 v54, p54

    move-object/from16 v55, p55

    move-object/from16 v56, p56

    invoke-direct/range {v0 .. v56}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;)V

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
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->packageName:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->packageName:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->name:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->name:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dateBackup:Ljava/lang/Long;

    .line 36
    .line 37
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dateBackup:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dateBackupUpdated:Ljava/lang/Long;

    .line 47
    .line 48
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dateBackupUpdated:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->versionName:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->versionName:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->versionCode:Ljava/lang/Long;

    .line 69
    .line 70
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->versionCode:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkBackupSize:Ljava/lang/Long;

    .line 80
    .line 81
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkBackupSize:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkBackupDate:Ljava/lang/Long;

    .line 91
    .line 92
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkBackupDate:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkSBVersionCodeRequired:Ljava/lang/Long;

    .line 102
    .line 103
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkSBVersionCodeRequired:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkSBVersionNameRequired:Ljava/lang/String;

    .line 113
    .line 114
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkSBVersionNameRequired:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsBackupSize:Ljava/lang/Long;

    .line 124
    .line 125
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsBackupSize:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsSizeMirrored:Ljava/lang/Long;

    .line 135
    .line 136
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsSizeMirrored:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsSBVersionCodeRequired:Ljava/lang/Long;

    .line 146
    .line 147
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsSBVersionCodeRequired:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsSBVersionNameRequired:Ljava/lang/String;

    .line 157
    .line 158
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsSBVersionNameRequired:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsBackupSize:Ljava/lang/Long;

    .line 168
    .line 169
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsBackupSize:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsSizeMirrored:Ljava/lang/Long;

    .line 179
    .line 180
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsSizeMirrored:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsSBVersionCodeRequired:Ljava/lang/Long;

    .line 190
    .line 191
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsSBVersionCodeRequired:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsSBVersionNameRequired:Ljava/lang/String;

    .line 201
    .line 202
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsSBVersionNameRequired:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataBackupSize:Ljava/lang/Long;

    .line 212
    .line 213
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataBackupSize:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataSizeMirrored:Ljava/lang/Long;

    .line 223
    .line 224
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataSizeMirrored:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isDataEncrypted:Ljava/lang/Boolean;

    .line 234
    .line 235
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isDataEncrypted:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataEncryptionMethod:Ljava/lang/String;

    .line 245
    .line 246
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataEncryptionMethod:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataPasswordHash:Ljava/lang/String;

    .line 256
    .line 257
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataPasswordHash:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataBackupDate:Ljava/lang/Long;

    .line 267
    .line 268
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataBackupDate:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataSBVersionCodeRequired:Ljava/lang/Long;

    .line 278
    .line 279
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataSBVersionCodeRequired:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataSBVersionNameRequired:Ljava/lang/String;

    .line 289
    .line 290
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataSBVersionNameRequired:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataBackupSize:Ljava/lang/Long;

    .line 300
    .line 301
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataBackupSize:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataSizeMirrored:Ljava/lang/Long;

    .line 311
    .line 312
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataSizeMirrored:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isExtDataEncrypted:Ljava/lang/Boolean;

    .line 322
    .line 323
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isExtDataEncrypted:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataEncryptionMethod:Ljava/lang/String;

    .line 333
    .line 334
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataEncryptionMethod:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataPasswordHash:Ljava/lang/String;

    .line 344
    .line 345
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataPasswordHash:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataBackupDate:Ljava/lang/Long;

    .line 355
    .line 356
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataBackupDate:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataSBVersionCodeRequired:Ljava/lang/Long;

    .line 366
    .line 367
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataSBVersionCodeRequired:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataSBVersionNameRequired:Ljava/lang/String;

    .line 377
    .line 378
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataSBVersionNameRequired:Ljava/lang/String;

    .line 379
    .line 380
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v1

    .line 384
    if-nez v1, :cond_23

    .line 385
    .line 386
    return v2

    .line 387
    :cond_23
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expBackupSize:Ljava/lang/Long;

    .line 388
    .line 389
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expBackupSize:Ljava/lang/Long;

    .line 390
    .line 391
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    move-result v1

    .line 395
    if-nez v1, :cond_24

    .line 396
    .line 397
    return v2

    .line 398
    :cond_24
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expSizeMirrored:Ljava/lang/Long;

    .line 399
    .line 400
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expSizeMirrored:Ljava/lang/Long;

    .line 401
    .line 402
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    move-result v1

    .line 406
    if-nez v1, :cond_25

    .line 407
    .line 408
    return v2

    .line 409
    :cond_25
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expansionBackupDate:Ljava/lang/Long;

    .line 410
    .line 411
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expansionBackupDate:Ljava/lang/Long;

    .line 412
    .line 413
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    move-result v1

    .line 417
    if-nez v1, :cond_26

    .line 418
    .line 419
    return v2

    .line 420
    :cond_26
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expSBVersionCodeRequired:Ljava/lang/Long;

    .line 421
    .line 422
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expSBVersionCodeRequired:Ljava/lang/Long;

    .line 423
    .line 424
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    move-result v1

    .line 428
    if-nez v1, :cond_27

    .line 429
    .line 430
    return v2

    .line 431
    :cond_27
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expSBVersionNameRequired:Ljava/lang/String;

    .line 432
    .line 433
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expSBVersionNameRequired:Ljava/lang/String;

    .line 434
    .line 435
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    move-result v1

    .line 439
    if-nez v1, :cond_28

    .line 440
    .line 441
    return v2

    .line 442
    :cond_28
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaBackupSize:Ljava/lang/Long;

    .line 443
    .line 444
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaBackupSize:Ljava/lang/Long;

    .line 445
    .line 446
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result v1

    .line 450
    if-nez v1, :cond_29

    .line 451
    .line 452
    return v2

    .line 453
    :cond_29
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaSizeMirrored:Ljava/lang/Long;

    .line 454
    .line 455
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaSizeMirrored:Ljava/lang/Long;

    .line 456
    .line 457
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    move-result v1

    .line 461
    if-nez v1, :cond_2a

    .line 462
    .line 463
    return v2

    .line 464
    :cond_2a
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isMediaEncrypted:Ljava/lang/Boolean;

    .line 465
    .line 466
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isMediaEncrypted:Ljava/lang/Boolean;

    .line 467
    .line 468
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    move-result v1

    .line 472
    if-nez v1, :cond_2b

    .line 473
    .line 474
    return v2

    .line 475
    :cond_2b
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaEncryptionMethod:Ljava/lang/String;

    .line 476
    .line 477
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaEncryptionMethod:Ljava/lang/String;

    .line 478
    .line 479
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    move-result v1

    .line 483
    if-nez v1, :cond_2c

    .line 484
    .line 485
    return v2

    .line 486
    :cond_2c
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaPasswordHash:Ljava/lang/String;

    .line 487
    .line 488
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaPasswordHash:Ljava/lang/String;

    .line 489
    .line 490
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    move-result v1

    .line 494
    if-nez v1, :cond_2d

    .line 495
    .line 496
    return v2

    .line 497
    :cond_2d
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaBackupDate:Ljava/lang/Long;

    .line 498
    .line 499
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaBackupDate:Ljava/lang/Long;

    .line 500
    .line 501
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    move-result v1

    .line 505
    if-nez v1, :cond_2e

    .line 506
    .line 507
    return v2

    .line 508
    :cond_2e
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaSBVersionCodeRequired:Ljava/lang/Long;

    .line 509
    .line 510
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaSBVersionCodeRequired:Ljava/lang/Long;

    .line 511
    .line 512
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 513
    .line 514
    .line 515
    move-result v1

    .line 516
    if-nez v1, :cond_2f

    .line 517
    .line 518
    return v2

    .line 519
    :cond_2f
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaSBVersionNameRequired:Ljava/lang/String;

    .line 520
    .line 521
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaSBVersionNameRequired:Ljava/lang/String;

    .line 522
    .line 523
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 524
    .line 525
    .line 526
    move-result v1

    .line 527
    if-nez v1, :cond_30

    .line 528
    .line 529
    return v2

    .line 530
    :cond_30
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->permissionIdsCsv:Ljava/lang/String;

    .line 531
    .line 532
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->permissionIdsCsv:Ljava/lang/String;

    .line 533
    .line 534
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 535
    .line 536
    .line 537
    move-result v1

    .line 538
    if-nez v1, :cond_31

    .line 539
    .line 540
    return v2

    .line 541
    :cond_31
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->permissionStatesCsv:Ljava/lang/String;

    .line 542
    .line 543
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->permissionStatesCsv:Ljava/lang/String;

    .line 544
    .line 545
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 546
    .line 547
    .line 548
    move-result v1

    .line 549
    if-nez v1, :cond_32

    .line 550
    .line 551
    return v2

    .line 552
    :cond_32
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->ntfAccessComponent:Ljava/lang/String;

    .line 553
    .line 554
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->ntfAccessComponent:Ljava/lang/String;

    .line 555
    .line 556
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 557
    .line 558
    .line 559
    move-result v1

    .line 560
    if-nez v1, :cond_33

    .line 561
    .line 562
    return v2

    .line 563
    :cond_33
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->accessibilityComponent:Ljava/lang/String;

    .line 564
    .line 565
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->accessibilityComponent:Ljava/lang/String;

    .line 566
    .line 567
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 568
    .line 569
    .line 570
    move-result v1

    .line 571
    if-nez v1, :cond_34

    .line 572
    .line 573
    return v2

    .line 574
    :cond_34
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->ssaid:Ljava/lang/String;

    .line 575
    .line 576
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->ssaid:Ljava/lang/String;

    .line 577
    .line 578
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 579
    .line 580
    .line 581
    move-result v1

    .line 582
    if-nez v1, :cond_35

    .line 583
    .line 584
    return v2

    .line 585
    :cond_35
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->installerPackage:Ljava/lang/String;

    .line 586
    .line 587
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->installerPackage:Ljava/lang/String;

    .line 588
    .line 589
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    move-result v1

    .line 593
    if-nez v1, :cond_36

    .line 594
    .line 595
    return v2

    .line 596
    :cond_36
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->_protectedBackup:Ljava/lang/Boolean;

    .line 597
    .line 598
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->_protectedBackup:Ljava/lang/Boolean;

    .line 599
    .line 600
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 601
    .line 602
    .line 603
    move-result v1

    .line 604
    if-nez v1, :cond_37

    .line 605
    .line 606
    return v2

    .line 607
    :cond_37
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->_note:Ljava/lang/String;

    .line 608
    .line 609
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->_note:Ljava/lang/String;

    .line 610
    .line 611
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 612
    .line 613
    .line 614
    move-result v1

    .line 615
    if-nez v1, :cond_38

    .line 616
    .line 617
    return v2

    .line 618
    :cond_38
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->keyVersion:Ljava/lang/Integer;

    .line 619
    .line 620
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->keyVersion:Ljava/lang/Integer;

    .line 621
    .line 622
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 623
    .line 624
    .line 625
    move-result p0

    .line 626
    if-nez p0, :cond_39

    .line 627
    .line 628
    return v2

    .line 629
    :cond_39
    return v0
.end method

.method public final getAccessibilityComponent()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->accessibilityComponent:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getApkBackupDate()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkBackupDate:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getApkBackupSize()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkBackupSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getApkSBVersionCodeRequired()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getApkSBVersionNameRequired()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getApkSizeMirrored()Ljava/lang/Long;
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkBackupSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDataBackupDate()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataBackupDate:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDataBackupSize()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataBackupSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDataEncryptionMethod()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataEncryptionMethod:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDataPasswordHash()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataPasswordHash:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDataSBVersionCodeRequired()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDataSBVersionNameRequired()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDataSizeMirrored()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataSizeMirrored:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDateBackup()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dateBackup:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDateBackupUpdated()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dateBackupUpdated:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExpBackupSize()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expBackupSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExpSBVersionCodeRequired()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExpSBVersionNameRequired()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExpSizeMirrored()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expSizeMirrored:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExpansionBackupDate()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expansionBackupDate:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExtDataBackupDate()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataBackupDate:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExtDataBackupSize()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataBackupSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExtDataEncryptionMethod()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataEncryptionMethod:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExtDataPasswordHash()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataPasswordHash:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExtDataSBVersionCodeRequired()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExtDataSBVersionNameRequired()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExtDataSizeMirrored()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataSizeMirrored:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getInstallerPackage()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->installerPackage:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getKeyVersion()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->keyVersion:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMediaBackupDate()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaBackupDate:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMediaBackupSize()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaBackupSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMediaEncryptionMethod()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaEncryptionMethod:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMediaPasswordHash()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaPasswordHash:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMediaSBVersionCodeRequired()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMediaSBVersionNameRequired()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMediaSizeMirrored()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaSizeMirrored:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getNote()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->_note:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public final getNtfAccessComponent()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->ntfAccessComponent:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPermissionIdsCsv()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->permissionIdsCsv:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPermissionStatesCsv()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->permissionStatesCsv:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSBVersionCodesRequired()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsSBVersionCodeRequired:Ljava/lang/Long;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsSBVersionCodeRequired:Ljava/lang/Long;

    .line 6
    .line 7
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataSBVersionCodeRequired:Ljava/lang/Long;

    .line 8
    .line 9
    iget-object v4, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataSBVersionCodeRequired:Ljava/lang/Long;

    .line 10
    .line 11
    iget-object v5, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaSBVersionCodeRequired:Ljava/lang/Long;

    .line 12
    .line 13
    iget-object v6, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expSBVersionCodeRequired:Ljava/lang/Long;

    .line 14
    .line 15
    filled-new-array/range {v0 .. v6}, [Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final getSharedLibsBackupSize()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsBackupSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSharedLibsSBVersionCodeRequired()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSharedLibsSBVersionNameRequired()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSharedLibsSizeMirrored()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsSizeMirrored:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSplitsBackupSize()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsBackupSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSplitsSBVersionCodeRequired()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSplitsSBVersionNameRequired()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSplitsSizeMirrored()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsSizeMirrored:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSsaid()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->ssaid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getVersionCode()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->versionCode:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getVersionName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->versionName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_note()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->_note:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_protectedBackup()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->_protectedBackup:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hasSharedLibs()Z
    .locals 4
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsBackupSize:Ljava/lang/Long;

    .line 2
    .line 3
    invoke-static {p0}, Lio4;->h(Ljava/lang/Long;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long p0, v0, v2

    .line 10
    .line 11
    if-lez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public final hasSplitApks()Z
    .locals 4
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsBackupSize:Ljava/lang/Long;

    .line 2
    .line 3
    invoke-static {p0}, Lio4;->h(Ljava/lang/Long;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long p0, v0, v2

    .line 10
    .line 11
    if-lez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->packageName:Ljava/lang/String;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->name:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dateBackup:Ljava/lang/Long;

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
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dateBackupUpdated:Ljava/lang/Long;

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
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->versionName:Ljava/lang/String;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->versionCode:Ljava/lang/Long;

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
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkBackupSize:Ljava/lang/Long;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkBackupDate:Ljava/lang/Long;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkSBVersionCodeRequired:Ljava/lang/Long;

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
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkSBVersionNameRequired:Ljava/lang/String;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsBackupSize:Ljava/lang/Long;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsSizeMirrored:Ljava/lang/Long;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsSBVersionCodeRequired:Ljava/lang/Long;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsSBVersionNameRequired:Ljava/lang/String;

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
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsBackupSize:Ljava/lang/Long;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsSizeMirrored:Ljava/lang/Long;

    .line 174
    .line 175
    if-nez v2, :cond_d

    .line 176
    .line 177
    move v2, v3

    .line 178
    goto :goto_d

    .line 179
    :cond_d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    :goto_d
    add-int/2addr v0, v2

    .line 184
    mul-int/2addr v0, v1

    .line 185
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsSBVersionCodeRequired:Ljava/lang/Long;

    .line 186
    .line 187
    if-nez v2, :cond_e

    .line 188
    .line 189
    move v2, v3

    .line 190
    goto :goto_e

    .line 191
    :cond_e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    :goto_e
    add-int/2addr v0, v2

    .line 196
    mul-int/2addr v0, v1

    .line 197
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsSBVersionNameRequired:Ljava/lang/String;

    .line 198
    .line 199
    if-nez v2, :cond_f

    .line 200
    .line 201
    move v2, v3

    .line 202
    goto :goto_f

    .line 203
    :cond_f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    :goto_f
    add-int/2addr v0, v2

    .line 208
    mul-int/2addr v0, v1

    .line 209
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataBackupSize:Ljava/lang/Long;

    .line 210
    .line 211
    if-nez v2, :cond_10

    .line 212
    .line 213
    move v2, v3

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
    mul-int/2addr v0, v1

    .line 221
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataSizeMirrored:Ljava/lang/Long;

    .line 222
    .line 223
    if-nez v2, :cond_11

    .line 224
    .line 225
    move v2, v3

    .line 226
    goto :goto_11

    .line 227
    :cond_11
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    :goto_11
    add-int/2addr v0, v2

    .line 232
    mul-int/2addr v0, v1

    .line 233
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isDataEncrypted:Ljava/lang/Boolean;

    .line 234
    .line 235
    if-nez v2, :cond_12

    .line 236
    .line 237
    move v2, v3

    .line 238
    goto :goto_12

    .line 239
    :cond_12
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    :goto_12
    add-int/2addr v0, v2

    .line 244
    mul-int/2addr v0, v1

    .line 245
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataEncryptionMethod:Ljava/lang/String;

    .line 246
    .line 247
    if-nez v2, :cond_13

    .line 248
    .line 249
    move v2, v3

    .line 250
    goto :goto_13

    .line 251
    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    :goto_13
    add-int/2addr v0, v2

    .line 256
    mul-int/2addr v0, v1

    .line 257
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataPasswordHash:Ljava/lang/String;

    .line 258
    .line 259
    if-nez v2, :cond_14

    .line 260
    .line 261
    move v2, v3

    .line 262
    goto :goto_14

    .line 263
    :cond_14
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    :goto_14
    add-int/2addr v0, v2

    .line 268
    mul-int/2addr v0, v1

    .line 269
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataBackupDate:Ljava/lang/Long;

    .line 270
    .line 271
    if-nez v2, :cond_15

    .line 272
    .line 273
    move v2, v3

    .line 274
    goto :goto_15

    .line 275
    :cond_15
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    :goto_15
    add-int/2addr v0, v2

    .line 280
    mul-int/2addr v0, v1

    .line 281
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataSBVersionCodeRequired:Ljava/lang/Long;

    .line 282
    .line 283
    if-nez v2, :cond_16

    .line 284
    .line 285
    move v2, v3

    .line 286
    goto :goto_16

    .line 287
    :cond_16
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    :goto_16
    add-int/2addr v0, v2

    .line 292
    mul-int/2addr v0, v1

    .line 293
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataSBVersionNameRequired:Ljava/lang/String;

    .line 294
    .line 295
    if-nez v2, :cond_17

    .line 296
    .line 297
    move v2, v3

    .line 298
    goto :goto_17

    .line 299
    :cond_17
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    :goto_17
    add-int/2addr v0, v2

    .line 304
    mul-int/2addr v0, v1

    .line 305
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataBackupSize:Ljava/lang/Long;

    .line 306
    .line 307
    if-nez v2, :cond_18

    .line 308
    .line 309
    move v2, v3

    .line 310
    goto :goto_18

    .line 311
    :cond_18
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    :goto_18
    add-int/2addr v0, v2

    .line 316
    mul-int/2addr v0, v1

    .line 317
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataSizeMirrored:Ljava/lang/Long;

    .line 318
    .line 319
    if-nez v2, :cond_19

    .line 320
    .line 321
    move v2, v3

    .line 322
    goto :goto_19

    .line 323
    :cond_19
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 324
    .line 325
    .line 326
    move-result v2

    .line 327
    :goto_19
    add-int/2addr v0, v2

    .line 328
    mul-int/2addr v0, v1

    .line 329
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isExtDataEncrypted:Ljava/lang/Boolean;

    .line 330
    .line 331
    if-nez v2, :cond_1a

    .line 332
    .line 333
    move v2, v3

    .line 334
    goto :goto_1a

    .line 335
    :cond_1a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 336
    .line 337
    .line 338
    move-result v2

    .line 339
    :goto_1a
    add-int/2addr v0, v2

    .line 340
    mul-int/2addr v0, v1

    .line 341
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataEncryptionMethod:Ljava/lang/String;

    .line 342
    .line 343
    if-nez v2, :cond_1b

    .line 344
    .line 345
    move v2, v3

    .line 346
    goto :goto_1b

    .line 347
    :cond_1b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 348
    .line 349
    .line 350
    move-result v2

    .line 351
    :goto_1b
    add-int/2addr v0, v2

    .line 352
    mul-int/2addr v0, v1

    .line 353
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataPasswordHash:Ljava/lang/String;

    .line 354
    .line 355
    if-nez v2, :cond_1c

    .line 356
    .line 357
    move v2, v3

    .line 358
    goto :goto_1c

    .line 359
    :cond_1c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 360
    .line 361
    .line 362
    move-result v2

    .line 363
    :goto_1c
    add-int/2addr v0, v2

    .line 364
    mul-int/2addr v0, v1

    .line 365
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataBackupDate:Ljava/lang/Long;

    .line 366
    .line 367
    if-nez v2, :cond_1d

    .line 368
    .line 369
    move v2, v3

    .line 370
    goto :goto_1d

    .line 371
    :cond_1d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    :goto_1d
    add-int/2addr v0, v2

    .line 376
    mul-int/2addr v0, v1

    .line 377
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataSBVersionCodeRequired:Ljava/lang/Long;

    .line 378
    .line 379
    if-nez v2, :cond_1e

    .line 380
    .line 381
    move v2, v3

    .line 382
    goto :goto_1e

    .line 383
    :cond_1e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 384
    .line 385
    .line 386
    move-result v2

    .line 387
    :goto_1e
    add-int/2addr v0, v2

    .line 388
    mul-int/2addr v0, v1

    .line 389
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataSBVersionNameRequired:Ljava/lang/String;

    .line 390
    .line 391
    if-nez v2, :cond_1f

    .line 392
    .line 393
    move v2, v3

    .line 394
    goto :goto_1f

    .line 395
    :cond_1f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 396
    .line 397
    .line 398
    move-result v2

    .line 399
    :goto_1f
    add-int/2addr v0, v2

    .line 400
    mul-int/2addr v0, v1

    .line 401
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expBackupSize:Ljava/lang/Long;

    .line 402
    .line 403
    if-nez v2, :cond_20

    .line 404
    .line 405
    move v2, v3

    .line 406
    goto :goto_20

    .line 407
    :cond_20
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 408
    .line 409
    .line 410
    move-result v2

    .line 411
    :goto_20
    add-int/2addr v0, v2

    .line 412
    mul-int/2addr v0, v1

    .line 413
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expSizeMirrored:Ljava/lang/Long;

    .line 414
    .line 415
    if-nez v2, :cond_21

    .line 416
    .line 417
    move v2, v3

    .line 418
    goto :goto_21

    .line 419
    :cond_21
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 420
    .line 421
    .line 422
    move-result v2

    .line 423
    :goto_21
    add-int/2addr v0, v2

    .line 424
    mul-int/2addr v0, v1

    .line 425
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expansionBackupDate:Ljava/lang/Long;

    .line 426
    .line 427
    if-nez v2, :cond_22

    .line 428
    .line 429
    move v2, v3

    .line 430
    goto :goto_22

    .line 431
    :cond_22
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 432
    .line 433
    .line 434
    move-result v2

    .line 435
    :goto_22
    add-int/2addr v0, v2

    .line 436
    mul-int/2addr v0, v1

    .line 437
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expSBVersionCodeRequired:Ljava/lang/Long;

    .line 438
    .line 439
    if-nez v2, :cond_23

    .line 440
    .line 441
    move v2, v3

    .line 442
    goto :goto_23

    .line 443
    :cond_23
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 444
    .line 445
    .line 446
    move-result v2

    .line 447
    :goto_23
    add-int/2addr v0, v2

    .line 448
    mul-int/2addr v0, v1

    .line 449
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expSBVersionNameRequired:Ljava/lang/String;

    .line 450
    .line 451
    if-nez v2, :cond_24

    .line 452
    .line 453
    move v2, v3

    .line 454
    goto :goto_24

    .line 455
    :cond_24
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 456
    .line 457
    .line 458
    move-result v2

    .line 459
    :goto_24
    add-int/2addr v0, v2

    .line 460
    mul-int/2addr v0, v1

    .line 461
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaBackupSize:Ljava/lang/Long;

    .line 462
    .line 463
    if-nez v2, :cond_25

    .line 464
    .line 465
    move v2, v3

    .line 466
    goto :goto_25

    .line 467
    :cond_25
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 468
    .line 469
    .line 470
    move-result v2

    .line 471
    :goto_25
    add-int/2addr v0, v2

    .line 472
    mul-int/2addr v0, v1

    .line 473
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaSizeMirrored:Ljava/lang/Long;

    .line 474
    .line 475
    if-nez v2, :cond_26

    .line 476
    .line 477
    move v2, v3

    .line 478
    goto :goto_26

    .line 479
    :cond_26
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 480
    .line 481
    .line 482
    move-result v2

    .line 483
    :goto_26
    add-int/2addr v0, v2

    .line 484
    mul-int/2addr v0, v1

    .line 485
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isMediaEncrypted:Ljava/lang/Boolean;

    .line 486
    .line 487
    if-nez v2, :cond_27

    .line 488
    .line 489
    move v2, v3

    .line 490
    goto :goto_27

    .line 491
    :cond_27
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 492
    .line 493
    .line 494
    move-result v2

    .line 495
    :goto_27
    add-int/2addr v0, v2

    .line 496
    mul-int/2addr v0, v1

    .line 497
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaEncryptionMethod:Ljava/lang/String;

    .line 498
    .line 499
    if-nez v2, :cond_28

    .line 500
    .line 501
    move v2, v3

    .line 502
    goto :goto_28

    .line 503
    :cond_28
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 504
    .line 505
    .line 506
    move-result v2

    .line 507
    :goto_28
    add-int/2addr v0, v2

    .line 508
    mul-int/2addr v0, v1

    .line 509
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaPasswordHash:Ljava/lang/String;

    .line 510
    .line 511
    if-nez v2, :cond_29

    .line 512
    .line 513
    move v2, v3

    .line 514
    goto :goto_29

    .line 515
    :cond_29
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 516
    .line 517
    .line 518
    move-result v2

    .line 519
    :goto_29
    add-int/2addr v0, v2

    .line 520
    mul-int/2addr v0, v1

    .line 521
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaBackupDate:Ljava/lang/Long;

    .line 522
    .line 523
    if-nez v2, :cond_2a

    .line 524
    .line 525
    move v2, v3

    .line 526
    goto :goto_2a

    .line 527
    :cond_2a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 528
    .line 529
    .line 530
    move-result v2

    .line 531
    :goto_2a
    add-int/2addr v0, v2

    .line 532
    mul-int/2addr v0, v1

    .line 533
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaSBVersionCodeRequired:Ljava/lang/Long;

    .line 534
    .line 535
    if-nez v2, :cond_2b

    .line 536
    .line 537
    move v2, v3

    .line 538
    goto :goto_2b

    .line 539
    :cond_2b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 540
    .line 541
    .line 542
    move-result v2

    .line 543
    :goto_2b
    add-int/2addr v0, v2

    .line 544
    mul-int/2addr v0, v1

    .line 545
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaSBVersionNameRequired:Ljava/lang/String;

    .line 546
    .line 547
    if-nez v2, :cond_2c

    .line 548
    .line 549
    move v2, v3

    .line 550
    goto :goto_2c

    .line 551
    :cond_2c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 552
    .line 553
    .line 554
    move-result v2

    .line 555
    :goto_2c
    add-int/2addr v0, v2

    .line 556
    mul-int/2addr v0, v1

    .line 557
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->permissionIdsCsv:Ljava/lang/String;

    .line 558
    .line 559
    if-nez v2, :cond_2d

    .line 560
    .line 561
    move v2, v3

    .line 562
    goto :goto_2d

    .line 563
    :cond_2d
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 564
    .line 565
    .line 566
    move-result v2

    .line 567
    :goto_2d
    add-int/2addr v0, v2

    .line 568
    mul-int/2addr v0, v1

    .line 569
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->permissionStatesCsv:Ljava/lang/String;

    .line 570
    .line 571
    if-nez v2, :cond_2e

    .line 572
    .line 573
    move v2, v3

    .line 574
    goto :goto_2e

    .line 575
    :cond_2e
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 576
    .line 577
    .line 578
    move-result v2

    .line 579
    :goto_2e
    add-int/2addr v0, v2

    .line 580
    mul-int/2addr v0, v1

    .line 581
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->ntfAccessComponent:Ljava/lang/String;

    .line 582
    .line 583
    if-nez v2, :cond_2f

    .line 584
    .line 585
    move v2, v3

    .line 586
    goto :goto_2f

    .line 587
    :cond_2f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 588
    .line 589
    .line 590
    move-result v2

    .line 591
    :goto_2f
    add-int/2addr v0, v2

    .line 592
    mul-int/2addr v0, v1

    .line 593
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->accessibilityComponent:Ljava/lang/String;

    .line 594
    .line 595
    if-nez v2, :cond_30

    .line 596
    .line 597
    move v2, v3

    .line 598
    goto :goto_30

    .line 599
    :cond_30
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 600
    .line 601
    .line 602
    move-result v2

    .line 603
    :goto_30
    add-int/2addr v0, v2

    .line 604
    mul-int/2addr v0, v1

    .line 605
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->ssaid:Ljava/lang/String;

    .line 606
    .line 607
    if-nez v2, :cond_31

    .line 608
    .line 609
    move v2, v3

    .line 610
    goto :goto_31

    .line 611
    :cond_31
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 612
    .line 613
    .line 614
    move-result v2

    .line 615
    :goto_31
    add-int/2addr v0, v2

    .line 616
    mul-int/2addr v0, v1

    .line 617
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->installerPackage:Ljava/lang/String;

    .line 618
    .line 619
    if-nez v2, :cond_32

    .line 620
    .line 621
    move v2, v3

    .line 622
    goto :goto_32

    .line 623
    :cond_32
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 624
    .line 625
    .line 626
    move-result v2

    .line 627
    :goto_32
    add-int/2addr v0, v2

    .line 628
    mul-int/2addr v0, v1

    .line 629
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->_protectedBackup:Ljava/lang/Boolean;

    .line 630
    .line 631
    if-nez v2, :cond_33

    .line 632
    .line 633
    move v2, v3

    .line 634
    goto :goto_33

    .line 635
    :cond_33
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 636
    .line 637
    .line 638
    move-result v2

    .line 639
    :goto_33
    add-int/2addr v0, v2

    .line 640
    mul-int/2addr v0, v1

    .line 641
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->_note:Ljava/lang/String;

    .line 642
    .line 643
    if-nez v2, :cond_34

    .line 644
    .line 645
    move v2, v3

    .line 646
    goto :goto_34

    .line 647
    :cond_34
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 648
    .line 649
    .line 650
    move-result v2

    .line 651
    :goto_34
    add-int/2addr v0, v2

    .line 652
    mul-int/2addr v0, v1

    .line 653
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->keyVersion:Ljava/lang/Integer;

    .line 654
    .line 655
    if-nez p0, :cond_35

    .line 656
    .line 657
    goto :goto_35

    .line 658
    :cond_35
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 659
    .line 660
    .line 661
    move-result v3

    .line 662
    :goto_35
    add-int/2addr v0, v3

    .line 663
    return v0
.end method

.method public final isDataEncrypted()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isDataEncrypted:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isExtDataEncrypted()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isExtDataEncrypted:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isMediaEncrypted()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isMediaEncrypted:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isProtectedBackup()Z
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->_protectedBackup:Ljava/lang/Boolean;

    .line 2
    .line 3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-static {p0, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    sget-object p0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

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

.method public final setAccessibilityComponent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->accessibilityComponent:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setApkBackupDate(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkBackupDate:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setApkBackupSize(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkBackupSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setApkSBVersionCodeRequired(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setApkSBVersionNameRequired(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDataBackupDate(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataBackupDate:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setDataBackupSize(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataBackupSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setDataEncrypted(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isDataEncrypted:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setDataEncryptionMethod(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataEncryptionMethod:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDataPasswordHash(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataPasswordHash:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDataSBVersionCodeRequired(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setDataSBVersionNameRequired(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDataSizeMirrored(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataSizeMirrored:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setDateBackup(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dateBackup:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setDateBackupUpdated(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dateBackupUpdated:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setExpBackupSize(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expBackupSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setExpSBVersionCodeRequired(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setExpSBVersionNameRequired(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setExpSizeMirrored(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expSizeMirrored:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setExpansionBackupDate(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expansionBackupDate:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setExtDataBackupDate(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataBackupDate:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setExtDataBackupSize(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataBackupSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setExtDataEncrypted(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isExtDataEncrypted:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setExtDataEncryptionMethod(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataEncryptionMethod:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setExtDataPasswordHash(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataPasswordHash:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setExtDataSBVersionCodeRequired(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setExtDataSBVersionNameRequired(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setExtDataSizeMirrored(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataSizeMirrored:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setInstallerPackage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->installerPackage:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setKeyVersion(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->keyVersion:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setMediaBackupDate(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaBackupDate:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setMediaBackupSize(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaBackupSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setMediaEncrypted(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isMediaEncrypted:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setMediaEncryptionMethod(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaEncryptionMethod:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMediaPasswordHash(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaPasswordHash:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMediaSBVersionCodeRequired(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setMediaSBVersionNameRequired(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMediaSizeMirrored(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaSizeMirrored:Ljava/lang/Long;

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
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->name:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public final setNtfAccessComponent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->ntfAccessComponent:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->packageName:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public final setPermissionIdsCsv(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->permissionIdsCsv:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPermissionStatesCsv(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->permissionStatesCsv:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSharedLibsBackupSize(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsBackupSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setSharedLibsSBVersionCodeRequired(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setSharedLibsSBVersionNameRequired(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSharedLibsSizeMirrored(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsSizeMirrored:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setSplitsBackupSize(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsBackupSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setSplitsSBVersionCodeRequired(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setSplitsSBVersionNameRequired(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSplitsSizeMirrored(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsSizeMirrored:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setSsaid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->ssaid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setVersionCode(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->versionCode:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setVersionName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->versionName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final set_note(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->_note:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final set_protectedBackup(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->_protectedBackup:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 58

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->packageName:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->name:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dateBackup:Ljava/lang/Long;

    .line 8
    .line 9
    iget-object v4, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dateBackupUpdated:Ljava/lang/Long;

    .line 10
    .line 11
    iget-object v5, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->versionName:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->versionCode:Ljava/lang/Long;

    .line 14
    .line 15
    iget-object v7, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkBackupSize:Ljava/lang/Long;

    .line 16
    .line 17
    iget-object v8, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkBackupDate:Ljava/lang/Long;

    .line 18
    .line 19
    iget-object v9, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkSBVersionCodeRequired:Ljava/lang/Long;

    .line 20
    .line 21
    iget-object v10, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkSBVersionNameRequired:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v11, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsBackupSize:Ljava/lang/Long;

    .line 24
    .line 25
    iget-object v12, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsSizeMirrored:Ljava/lang/Long;

    .line 26
    .line 27
    iget-object v13, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsSBVersionCodeRequired:Ljava/lang/Long;

    .line 28
    .line 29
    iget-object v14, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsSBVersionNameRequired:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsBackupSize:Ljava/lang/Long;

    .line 32
    .line 33
    move-object/from16 v16, v15

    .line 34
    .line 35
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsSizeMirrored:Ljava/lang/Long;

    .line 36
    .line 37
    move-object/from16 v17, v15

    .line 38
    .line 39
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsSBVersionCodeRequired:Ljava/lang/Long;

    .line 40
    .line 41
    move-object/from16 v18, v15

    .line 42
    .line 43
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsSBVersionNameRequired:Ljava/lang/String;

    .line 44
    .line 45
    move-object/from16 v19, v15

    .line 46
    .line 47
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataBackupSize:Ljava/lang/Long;

    .line 48
    .line 49
    move-object/from16 v20, v15

    .line 50
    .line 51
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataSizeMirrored:Ljava/lang/Long;

    .line 52
    .line 53
    move-object/from16 v21, v15

    .line 54
    .line 55
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isDataEncrypted:Ljava/lang/Boolean;

    .line 56
    .line 57
    move-object/from16 v22, v15

    .line 58
    .line 59
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataEncryptionMethod:Ljava/lang/String;

    .line 60
    .line 61
    move-object/from16 v23, v15

    .line 62
    .line 63
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataPasswordHash:Ljava/lang/String;

    .line 64
    .line 65
    move-object/from16 v24, v15

    .line 66
    .line 67
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataBackupDate:Ljava/lang/Long;

    .line 68
    .line 69
    move-object/from16 v25, v15

    .line 70
    .line 71
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataSBVersionCodeRequired:Ljava/lang/Long;

    .line 72
    .line 73
    move-object/from16 v26, v15

    .line 74
    .line 75
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataSBVersionNameRequired:Ljava/lang/String;

    .line 76
    .line 77
    move-object/from16 v27, v15

    .line 78
    .line 79
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataBackupSize:Ljava/lang/Long;

    .line 80
    .line 81
    move-object/from16 v28, v15

    .line 82
    .line 83
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataSizeMirrored:Ljava/lang/Long;

    .line 84
    .line 85
    move-object/from16 v29, v15

    .line 86
    .line 87
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isExtDataEncrypted:Ljava/lang/Boolean;

    .line 88
    .line 89
    move-object/from16 v30, v15

    .line 90
    .line 91
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataEncryptionMethod:Ljava/lang/String;

    .line 92
    .line 93
    move-object/from16 v31, v15

    .line 94
    .line 95
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataPasswordHash:Ljava/lang/String;

    .line 96
    .line 97
    move-object/from16 v32, v15

    .line 98
    .line 99
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataBackupDate:Ljava/lang/Long;

    .line 100
    .line 101
    move-object/from16 v33, v15

    .line 102
    .line 103
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataSBVersionCodeRequired:Ljava/lang/Long;

    .line 104
    .line 105
    move-object/from16 v34, v15

    .line 106
    .line 107
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataSBVersionNameRequired:Ljava/lang/String;

    .line 108
    .line 109
    move-object/from16 v35, v15

    .line 110
    .line 111
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expBackupSize:Ljava/lang/Long;

    .line 112
    .line 113
    move-object/from16 v36, v15

    .line 114
    .line 115
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expSizeMirrored:Ljava/lang/Long;

    .line 116
    .line 117
    move-object/from16 v37, v15

    .line 118
    .line 119
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expansionBackupDate:Ljava/lang/Long;

    .line 120
    .line 121
    move-object/from16 v38, v15

    .line 122
    .line 123
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expSBVersionCodeRequired:Ljava/lang/Long;

    .line 124
    .line 125
    move-object/from16 v39, v15

    .line 126
    .line 127
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expSBVersionNameRequired:Ljava/lang/String;

    .line 128
    .line 129
    move-object/from16 v40, v15

    .line 130
    .line 131
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaBackupSize:Ljava/lang/Long;

    .line 132
    .line 133
    move-object/from16 v41, v15

    .line 134
    .line 135
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaSizeMirrored:Ljava/lang/Long;

    .line 136
    .line 137
    move-object/from16 v42, v15

    .line 138
    .line 139
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isMediaEncrypted:Ljava/lang/Boolean;

    .line 140
    .line 141
    move-object/from16 v43, v15

    .line 142
    .line 143
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaEncryptionMethod:Ljava/lang/String;

    .line 144
    .line 145
    move-object/from16 v44, v15

    .line 146
    .line 147
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaPasswordHash:Ljava/lang/String;

    .line 148
    .line 149
    move-object/from16 v45, v15

    .line 150
    .line 151
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaBackupDate:Ljava/lang/Long;

    .line 152
    .line 153
    move-object/from16 v46, v15

    .line 154
    .line 155
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaSBVersionCodeRequired:Ljava/lang/Long;

    .line 156
    .line 157
    move-object/from16 v47, v15

    .line 158
    .line 159
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaSBVersionNameRequired:Ljava/lang/String;

    .line 160
    .line 161
    move-object/from16 v48, v15

    .line 162
    .line 163
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->permissionIdsCsv:Ljava/lang/String;

    .line 164
    .line 165
    move-object/from16 v49, v15

    .line 166
    .line 167
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->permissionStatesCsv:Ljava/lang/String;

    .line 168
    .line 169
    move-object/from16 v50, v15

    .line 170
    .line 171
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->ntfAccessComponent:Ljava/lang/String;

    .line 172
    .line 173
    move-object/from16 v51, v15

    .line 174
    .line 175
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->accessibilityComponent:Ljava/lang/String;

    .line 176
    .line 177
    move-object/from16 v52, v15

    .line 178
    .line 179
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->ssaid:Ljava/lang/String;

    .line 180
    .line 181
    move-object/from16 v53, v15

    .line 182
    .line 183
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->installerPackage:Ljava/lang/String;

    .line 184
    .line 185
    move-object/from16 v54, v15

    .line 186
    .line 187
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->_protectedBackup:Ljava/lang/Boolean;

    .line 188
    .line 189
    move-object/from16 v55, v15

    .line 190
    .line 191
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->_note:Ljava/lang/String;

    .line 192
    .line 193
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->keyVersion:Ljava/lang/Integer;

    .line 194
    .line 195
    move-object/from16 p0, v0

    .line 196
    .line 197
    const-string v0, ", name="

    .line 198
    .line 199
    move-object/from16 v56, v15

    .line 200
    .line 201
    const-string v15, ", dateBackup="

    .line 202
    .line 203
    move-object/from16 v57, v14

    .line 204
    .line 205
    const-string v14, "LocalMetadata(packageName="

    .line 206
    .line 207
    invoke-static {v14, v1, v0, v2, v15}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    const-string v1, ", dateBackupUpdated="

    .line 212
    .line 213
    const-string v2, ", versionName="

    .line 214
    .line 215
    invoke-static {v0, v3, v1, v4, v2}, Lfz5;->q(Ljava/lang/StringBuilder;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string v1, ", versionCode="

    .line 222
    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    const-string v1, ", apkBackupSize="

    .line 230
    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string v1, ", apkBackupDate="

    .line 235
    .line 236
    const-string v2, ", apkSBVersionCodeRequired="

    .line 237
    .line 238
    invoke-static {v0, v7, v1, v8, v2}, Lfz5;->q(Ljava/lang/StringBuilder;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v1, ", apkSBVersionNameRequired="

    .line 245
    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string v1, ", splitsBackupSize="

    .line 253
    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    const-string v1, ", splitsSizeMirrored="

    .line 258
    .line 259
    const-string v2, ", splitsSBVersionCodeRequired="

    .line 260
    .line 261
    invoke-static {v0, v11, v1, v12, v2}, Lfz5;->q(Ljava/lang/StringBuilder;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string v1, ", splitsSBVersionNameRequired="

    .line 268
    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    move-object/from16 v1, v57

    .line 273
    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    const-string v1, ", sharedLibsBackupSize="

    .line 278
    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    const-string v1, ", sharedLibsSizeMirrored="

    .line 283
    .line 284
    const-string v2, ", sharedLibsSBVersionCodeRequired="

    .line 285
    .line 286
    move-object/from16 v3, v16

    .line 287
    .line 288
    move-object/from16 v4, v17

    .line 289
    .line 290
    invoke-static {v0, v3, v1, v4, v2}, Lfz5;->q(Ljava/lang/StringBuilder;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    move-object/from16 v1, v18

    .line 294
    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    const-string v1, ", sharedLibsSBVersionNameRequired="

    .line 299
    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    move-object/from16 v1, v19

    .line 304
    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    const-string v1, ", dataBackupSize="

    .line 309
    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    const-string v1, ", dataSizeMirrored="

    .line 314
    .line 315
    const-string v2, ", isDataEncrypted="

    .line 316
    .line 317
    move-object/from16 v3, v20

    .line 318
    .line 319
    move-object/from16 v4, v21

    .line 320
    .line 321
    invoke-static {v0, v3, v1, v4, v2}, Lfz5;->q(Ljava/lang/StringBuilder;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    move-object/from16 v1, v22

    .line 325
    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    const-string v1, ", dataEncryptionMethod="

    .line 330
    .line 331
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    move-object/from16 v1, v23

    .line 335
    .line 336
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    const-string v1, ", dataPasswordHash="

    .line 340
    .line 341
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    move-object/from16 v1, v24

    .line 345
    .line 346
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    const-string v1, ", dataBackupDate="

    .line 350
    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    move-object/from16 v1, v25

    .line 355
    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    const-string v1, ", dataSBVersionCodeRequired="

    .line 360
    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    move-object/from16 v1, v26

    .line 365
    .line 366
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    const-string v1, ", dataSBVersionNameRequired="

    .line 370
    .line 371
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    move-object/from16 v1, v27

    .line 375
    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    const-string v1, ", extDataBackupSize="

    .line 380
    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    const-string v1, ", extDataSizeMirrored="

    .line 385
    .line 386
    const-string v2, ", isExtDataEncrypted="

    .line 387
    .line 388
    move-object/from16 v3, v28

    .line 389
    .line 390
    move-object/from16 v4, v29

    .line 391
    .line 392
    invoke-static {v0, v3, v1, v4, v2}, Lfz5;->q(Ljava/lang/StringBuilder;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    move-object/from16 v1, v30

    .line 396
    .line 397
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    const-string v1, ", extDataEncryptionMethod="

    .line 401
    .line 402
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    move-object/from16 v1, v31

    .line 406
    .line 407
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    const-string v1, ", extDataPasswordHash="

    .line 411
    .line 412
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    move-object/from16 v1, v32

    .line 416
    .line 417
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    const-string v1, ", extDataBackupDate="

    .line 421
    .line 422
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    move-object/from16 v1, v33

    .line 426
    .line 427
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    const-string v1, ", extDataSBVersionCodeRequired="

    .line 431
    .line 432
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    move-object/from16 v1, v34

    .line 436
    .line 437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    const-string v1, ", extDataSBVersionNameRequired="

    .line 441
    .line 442
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    move-object/from16 v1, v35

    .line 446
    .line 447
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    const-string v1, ", expBackupSize="

    .line 451
    .line 452
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    const-string v1, ", expSizeMirrored="

    .line 456
    .line 457
    const-string v2, ", expansionBackupDate="

    .line 458
    .line 459
    move-object/from16 v3, v36

    .line 460
    .line 461
    move-object/from16 v4, v37

    .line 462
    .line 463
    invoke-static {v0, v3, v1, v4, v2}, Lfz5;->q(Ljava/lang/StringBuilder;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    const-string v1, ", expSBVersionCodeRequired="

    .line 467
    .line 468
    const-string v2, ", expSBVersionNameRequired="

    .line 469
    .line 470
    move-object/from16 v3, v38

    .line 471
    .line 472
    move-object/from16 v4, v39

    .line 473
    .line 474
    invoke-static {v0, v3, v1, v4, v2}, Lfz5;->q(Ljava/lang/StringBuilder;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    move-object/from16 v1, v40

    .line 478
    .line 479
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    const-string v1, ", mediaBackupSize="

    .line 483
    .line 484
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    move-object/from16 v1, v41

    .line 488
    .line 489
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    const-string v1, ", mediaSizeMirrored="

    .line 493
    .line 494
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    move-object/from16 v1, v42

    .line 498
    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    const-string v1, ", isMediaEncrypted="

    .line 503
    .line 504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    move-object/from16 v1, v43

    .line 508
    .line 509
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    const-string v1, ", mediaEncryptionMethod="

    .line 513
    .line 514
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    const-string v1, ", mediaPasswordHash="

    .line 518
    .line 519
    const-string v2, ", mediaBackupDate="

    .line 520
    .line 521
    move-object/from16 v3, v44

    .line 522
    .line 523
    move-object/from16 v4, v45

    .line 524
    .line 525
    invoke-static {v0, v3, v1, v4, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    const-string v1, ", mediaSBVersionCodeRequired="

    .line 529
    .line 530
    const-string v2, ", mediaSBVersionNameRequired="

    .line 531
    .line 532
    move-object/from16 v3, v46

    .line 533
    .line 534
    move-object/from16 v4, v47

    .line 535
    .line 536
    invoke-static {v0, v3, v1, v4, v2}, Lfz5;->q(Ljava/lang/StringBuilder;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    const-string v1, ", permissionIdsCsv="

    .line 540
    .line 541
    const-string v2, ", permissionStatesCsv="

    .line 542
    .line 543
    move-object/from16 v3, v48

    .line 544
    .line 545
    move-object/from16 v4, v49

    .line 546
    .line 547
    invoke-static {v0, v3, v1, v4, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    const-string v1, ", ntfAccessComponent="

    .line 551
    .line 552
    const-string v2, ", accessibilityComponent="

    .line 553
    .line 554
    move-object/from16 v3, v50

    .line 555
    .line 556
    move-object/from16 v4, v51

    .line 557
    .line 558
    invoke-static {v0, v3, v1, v4, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    const-string v1, ", ssaid="

    .line 562
    .line 563
    const-string v2, ", installerPackage="

    .line 564
    .line 565
    move-object/from16 v3, v52

    .line 566
    .line 567
    move-object/from16 v4, v53

    .line 568
    .line 569
    invoke-static {v0, v3, v1, v4, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    move-object/from16 v1, v54

    .line 573
    .line 574
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    const-string v1, ", _protectedBackup="

    .line 578
    .line 579
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    move-object/from16 v1, v55

    .line 583
    .line 584
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    const-string v1, ", _note="

    .line 588
    .line 589
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    move-object/from16 v1, v56

    .line 593
    .line 594
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    const-string v1, ", keyVersion="

    .line 598
    .line 599
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    move-object/from16 v1, p0

    .line 603
    .line 604
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 605
    .line 606
    .line 607
    const-string v1, ")"

    .line 608
    .line 609
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    return-object v0
.end method

.method public final updateApkDetails(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->versionName:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->versionCode:Ljava/lang/Long;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkBackupSize:Ljava/lang/Long;

    .line 6
    .line 7
    iput-object p4, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkBackupDate:Ljava/lang/Long;

    .line 8
    .line 9
    const-wide/16 p1, 0x244

    .line 10
    .line 11
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkSBVersionCodeRequired:Ljava/lang/Long;

    .line 16
    .line 17
    const-string p1, "v5.0.0"

    .line 18
    .line 19
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkSBVersionNameRequired:Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method

.method public final updateDataDetails(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataSizeMirrored:Ljava/lang/Long;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataBackupSize:Ljava/lang/Long;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isDataEncrypted:Ljava/lang/Boolean;

    .line 6
    .line 7
    iput-object p4, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataEncryptionMethod:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataPasswordHash:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataBackupDate:Ljava/lang/Long;

    .line 12
    .line 13
    const-wide/16 p1, 0x244

    .line 14
    .line 15
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataSBVersionCodeRequired:Ljava/lang/Long;

    .line 20
    .line 21
    const-string p1, "v5.0.0"

    .line 22
    .line 23
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataSBVersionNameRequired:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method

.method public final updateExpansionDetails(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expSizeMirrored:Ljava/lang/Long;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expBackupSize:Ljava/lang/Long;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expansionBackupDate:Ljava/lang/Long;

    .line 6
    .line 7
    const-wide/16 p1, 0x244

    .line 8
    .line 9
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expSBVersionCodeRequired:Ljava/lang/Long;

    .line 14
    .line 15
    const-string p1, "v5.0.0"

    .line 16
    .line 17
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expSBVersionNameRequired:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method public final updateExtDataDetails(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataSizeMirrored:Ljava/lang/Long;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataBackupSize:Ljava/lang/Long;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isExtDataEncrypted:Ljava/lang/Boolean;

    .line 6
    .line 7
    iput-object p4, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataEncryptionMethod:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataPasswordHash:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataBackupDate:Ljava/lang/Long;

    .line 12
    .line 13
    const-wide/16 p1, 0x244

    .line 14
    .line 15
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataSBVersionCodeRequired:Ljava/lang/Long;

    .line 20
    .line 21
    const-string p1, "v5.0.0"

    .line 22
    .line 23
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataSBVersionNameRequired:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method

.method public final updateMediaDetails(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaSizeMirrored:Ljava/lang/Long;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaBackupSize:Ljava/lang/Long;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isMediaEncrypted:Ljava/lang/Boolean;

    .line 6
    .line 7
    iput-object p4, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaEncryptionMethod:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaPasswordHash:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaBackupDate:Ljava/lang/Long;

    .line 12
    .line 13
    const-wide/16 p1, 0x244

    .line 14
    .line 15
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaSBVersionCodeRequired:Ljava/lang/Long;

    .line 20
    .line 21
    const-string p1, "v5.0.0"

    .line 22
    .line 23
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaSBVersionNameRequired:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method

.method public final updateNote(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-static {p1}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/16 v1, 0x1e

    .line 15
    .line 16
    invoke-static {v1, p1}, Lnq7;->G0(ILjava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-lez v1, :cond_0

    .line 35
    .line 36
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    move-object v0, p1

    .line 43
    :cond_0
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->_note:Ljava/lang/String;

    .line 44
    .line 45
    return-void
.end method

.method public final updateProtection(Z)V
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->_protectedBackup:Ljava/lang/Boolean;

    .line 10
    .line 11
    return-void
.end method

.method public final updateSharedLibsDetails(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsBackupSize:Ljava/lang/Long;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsSizeMirrored:Ljava/lang/Long;

    .line 4
    .line 5
    const-wide/16 p1, 0x244

    .line 6
    .line 7
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsSBVersionCodeRequired:Ljava/lang/Long;

    .line 12
    .line 13
    const-string p1, "v5.0.0"

    .line 14
    .line 15
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsSBVersionNameRequired:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public final updateSplitsDetails(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsBackupSize:Ljava/lang/Long;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsSizeMirrored:Ljava/lang/Long;

    .line 4
    .line 5
    const-wide/16 p1, 0x244

    .line 6
    .line 7
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsSBVersionCodeRequired:Ljava/lang/Long;

    .line 12
    .line 13
    const-string p1, "v5.0.0"

    .line 14
    .line 15
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsSBVersionNameRequired:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->packageName:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->name:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dateBackup:Ljava/lang/Long;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    const/4 v1, 0x0

    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dateBackupUpdated:Ljava/lang/Long;

    .line 28
    .line 29
    if-nez p2, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 36
    .line 37
    .line 38
    :goto_1
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->versionName:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->versionCode:Ljava/lang/Long;

    .line 44
    .line 45
    if-nez p2, :cond_2

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 52
    .line 53
    .line 54
    :goto_2
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkBackupSize:Ljava/lang/Long;

    .line 55
    .line 56
    if-nez p2, :cond_3

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_3
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 63
    .line 64
    .line 65
    :goto_3
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkBackupDate:Ljava/lang/Long;

    .line 66
    .line 67
    if-nez p2, :cond_4

    .line 68
    .line 69
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_4
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 74
    .line 75
    .line 76
    :goto_4
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkSBVersionCodeRequired:Ljava/lang/Long;

    .line 77
    .line 78
    if-nez p2, :cond_5

    .line 79
    .line 80
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    .line 82
    .line 83
    goto :goto_5

    .line 84
    :cond_5
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 85
    .line 86
    .line 87
    :goto_5
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->apkSBVersionNameRequired:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsBackupSize:Ljava/lang/Long;

    .line 93
    .line 94
    if-nez p2, :cond_6

    .line 95
    .line 96
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    .line 98
    .line 99
    goto :goto_6

    .line 100
    :cond_6
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 101
    .line 102
    .line 103
    :goto_6
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsSizeMirrored:Ljava/lang/Long;

    .line 104
    .line 105
    if-nez p2, :cond_7

    .line 106
    .line 107
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    .line 109
    .line 110
    goto :goto_7

    .line 111
    :cond_7
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 112
    .line 113
    .line 114
    :goto_7
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsSBVersionCodeRequired:Ljava/lang/Long;

    .line 115
    .line 116
    if-nez p2, :cond_8

    .line 117
    .line 118
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    .line 120
    .line 121
    goto :goto_8

    .line 122
    :cond_8
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 123
    .line 124
    .line 125
    :goto_8
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->splitsSBVersionNameRequired:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsBackupSize:Ljava/lang/Long;

    .line 131
    .line 132
    if-nez p2, :cond_9

    .line 133
    .line 134
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    .line 136
    .line 137
    goto :goto_9

    .line 138
    :cond_9
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 139
    .line 140
    .line 141
    :goto_9
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsSizeMirrored:Ljava/lang/Long;

    .line 142
    .line 143
    if-nez p2, :cond_a

    .line 144
    .line 145
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    .line 147
    .line 148
    goto :goto_a

    .line 149
    :cond_a
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 150
    .line 151
    .line 152
    :goto_a
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsSBVersionCodeRequired:Ljava/lang/Long;

    .line 153
    .line 154
    if-nez p2, :cond_b

    .line 155
    .line 156
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    .line 158
    .line 159
    goto :goto_b

    .line 160
    :cond_b
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 161
    .line 162
    .line 163
    :goto_b
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->sharedLibsSBVersionNameRequired:Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataBackupSize:Ljava/lang/Long;

    .line 169
    .line 170
    if-nez p2, :cond_c

    .line 171
    .line 172
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    .line 174
    .line 175
    goto :goto_c

    .line 176
    :cond_c
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 177
    .line 178
    .line 179
    :goto_c
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataSizeMirrored:Ljava/lang/Long;

    .line 180
    .line 181
    if-nez p2, :cond_d

    .line 182
    .line 183
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    .line 185
    .line 186
    goto :goto_d

    .line 187
    :cond_d
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 188
    .line 189
    .line 190
    :goto_d
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isDataEncrypted:Ljava/lang/Boolean;

    .line 191
    .line 192
    if-nez p2, :cond_e

    .line 193
    .line 194
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    .line 196
    .line 197
    goto :goto_e

    .line 198
    :cond_e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 202
    .line 203
    .line 204
    move-result p2

    .line 205
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    .line 207
    .line 208
    :goto_e
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataEncryptionMethod:Ljava/lang/String;

    .line 209
    .line 210
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataPasswordHash:Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataBackupDate:Ljava/lang/Long;

    .line 219
    .line 220
    if-nez p2, :cond_f

    .line 221
    .line 222
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    .line 224
    .line 225
    goto :goto_f

    .line 226
    :cond_f
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 227
    .line 228
    .line 229
    :goto_f
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataSBVersionCodeRequired:Ljava/lang/Long;

    .line 230
    .line 231
    if-nez p2, :cond_10

    .line 232
    .line 233
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    .line 235
    .line 236
    goto :goto_10

    .line 237
    :cond_10
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 238
    .line 239
    .line 240
    :goto_10
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->dataSBVersionNameRequired:Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataBackupSize:Ljava/lang/Long;

    .line 246
    .line 247
    if-nez p2, :cond_11

    .line 248
    .line 249
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    .line 251
    .line 252
    goto :goto_11

    .line 253
    :cond_11
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 254
    .line 255
    .line 256
    :goto_11
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataSizeMirrored:Ljava/lang/Long;

    .line 257
    .line 258
    if-nez p2, :cond_12

    .line 259
    .line 260
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    .line 262
    .line 263
    goto :goto_12

    .line 264
    :cond_12
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 265
    .line 266
    .line 267
    :goto_12
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isExtDataEncrypted:Ljava/lang/Boolean;

    .line 268
    .line 269
    if-nez p2, :cond_13

    .line 270
    .line 271
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    .line 273
    .line 274
    goto :goto_13

    .line 275
    :cond_13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 279
    .line 280
    .line 281
    move-result p2

    .line 282
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    .line 284
    .line 285
    :goto_13
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataEncryptionMethod:Ljava/lang/String;

    .line 286
    .line 287
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataPasswordHash:Ljava/lang/String;

    .line 291
    .line 292
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataBackupDate:Ljava/lang/Long;

    .line 296
    .line 297
    if-nez p2, :cond_14

    .line 298
    .line 299
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    .line 301
    .line 302
    goto :goto_14

    .line 303
    :cond_14
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 304
    .line 305
    .line 306
    :goto_14
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataSBVersionCodeRequired:Ljava/lang/Long;

    .line 307
    .line 308
    if-nez p2, :cond_15

    .line 309
    .line 310
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    .line 312
    .line 313
    goto :goto_15

    .line 314
    :cond_15
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 315
    .line 316
    .line 317
    :goto_15
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->extDataSBVersionNameRequired:Ljava/lang/String;

    .line 318
    .line 319
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expBackupSize:Ljava/lang/Long;

    .line 323
    .line 324
    if-nez p2, :cond_16

    .line 325
    .line 326
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    .line 328
    .line 329
    goto :goto_16

    .line 330
    :cond_16
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 331
    .line 332
    .line 333
    :goto_16
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expSizeMirrored:Ljava/lang/Long;

    .line 334
    .line 335
    if-nez p2, :cond_17

    .line 336
    .line 337
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    .line 339
    .line 340
    goto :goto_17

    .line 341
    :cond_17
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 342
    .line 343
    .line 344
    :goto_17
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expansionBackupDate:Ljava/lang/Long;

    .line 345
    .line 346
    if-nez p2, :cond_18

    .line 347
    .line 348
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    .line 350
    .line 351
    goto :goto_18

    .line 352
    :cond_18
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 353
    .line 354
    .line 355
    :goto_18
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expSBVersionCodeRequired:Ljava/lang/Long;

    .line 356
    .line 357
    if-nez p2, :cond_19

    .line 358
    .line 359
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    .line 361
    .line 362
    goto :goto_19

    .line 363
    :cond_19
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 364
    .line 365
    .line 366
    :goto_19
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->expSBVersionNameRequired:Ljava/lang/String;

    .line 367
    .line 368
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaBackupSize:Ljava/lang/Long;

    .line 372
    .line 373
    if-nez p2, :cond_1a

    .line 374
    .line 375
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    .line 377
    .line 378
    goto :goto_1a

    .line 379
    :cond_1a
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 380
    .line 381
    .line 382
    :goto_1a
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaSizeMirrored:Ljava/lang/Long;

    .line 383
    .line 384
    if-nez p2, :cond_1b

    .line 385
    .line 386
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    .line 388
    .line 389
    goto :goto_1b

    .line 390
    :cond_1b
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 391
    .line 392
    .line 393
    :goto_1b
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isMediaEncrypted:Ljava/lang/Boolean;

    .line 394
    .line 395
    if-nez p2, :cond_1c

    .line 396
    .line 397
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    .line 399
    .line 400
    goto :goto_1c

    .line 401
    :cond_1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 405
    .line 406
    .line 407
    move-result p2

    .line 408
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    .line 410
    .line 411
    :goto_1c
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaEncryptionMethod:Ljava/lang/String;

    .line 412
    .line 413
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaPasswordHash:Ljava/lang/String;

    .line 417
    .line 418
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaBackupDate:Ljava/lang/Long;

    .line 422
    .line 423
    if-nez p2, :cond_1d

    .line 424
    .line 425
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    .line 427
    .line 428
    goto :goto_1d

    .line 429
    :cond_1d
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 430
    .line 431
    .line 432
    :goto_1d
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaSBVersionCodeRequired:Ljava/lang/Long;

    .line 433
    .line 434
    if-nez p2, :cond_1e

    .line 435
    .line 436
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    .line 438
    .line 439
    goto :goto_1e

    .line 440
    :cond_1e
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 441
    .line 442
    .line 443
    :goto_1e
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->mediaSBVersionNameRequired:Ljava/lang/String;

    .line 444
    .line 445
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->permissionIdsCsv:Ljava/lang/String;

    .line 449
    .line 450
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->permissionStatesCsv:Ljava/lang/String;

    .line 454
    .line 455
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->ntfAccessComponent:Ljava/lang/String;

    .line 459
    .line 460
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->accessibilityComponent:Ljava/lang/String;

    .line 464
    .line 465
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->ssaid:Ljava/lang/String;

    .line 469
    .line 470
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->installerPackage:Ljava/lang/String;

    .line 474
    .line 475
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->_protectedBackup:Ljava/lang/Boolean;

    .line 479
    .line 480
    if-nez p2, :cond_1f

    .line 481
    .line 482
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    .line 484
    .line 485
    goto :goto_1f

    .line 486
    :cond_1f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 490
    .line 491
    .line 492
    move-result p2

    .line 493
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    .line 495
    .line 496
    :goto_1f
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->_note:Ljava/lang/String;

    .line 497
    .line 498
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->keyVersion:Ljava/lang/Integer;

    .line 502
    .line 503
    if-nez p0, :cond_20

    .line 504
    .line 505
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    .line 507
    .line 508
    return-void

    .line 509
    :cond_20
    invoke-static {p1, v0, p0}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 510
    .line 511
    .line 512
    return-void
.end method
