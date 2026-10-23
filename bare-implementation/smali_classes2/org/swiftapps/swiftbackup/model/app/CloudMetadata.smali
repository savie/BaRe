.class public final Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/swiftapps/swiftbackup/model/app/CloudMetadata$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lorg/swiftapps/swiftbackup/model/app/CloudMetadata$a;


# instance fields
.field private _note:Ljava/lang/String;

.field private _protectedBackup:Ljava/lang/Boolean;

.field private accessibilityComponent:Ljava/lang/String;

.field private apkBackupDate:Ljava/lang/Long;

.field private apkLink:Ljava/lang/String;

.field private apkSBVersionCodeRequired:Ljava/lang/Long;

.field private apkSBVersionNameRequired:Ljava/lang/String;

.field private apkSize:Ljava/lang/Long;

.field private dataBackupDate:Ljava/lang/Long;

.field private dataEncryptionMethod:Ljava/lang/String;

.field private dataLink:Ljava/lang/String;

.field private dataPasswordHash:Ljava/lang/String;

.field private dataSBVersionCodeRequired:Ljava/lang/Long;

.field private dataSBVersionNameRequired:Ljava/lang/String;

.field private dataSize:Ljava/lang/Long;

.field private dataSizeMirrored:Ljava/lang/Long;

.field private dateBackup:Ljava/lang/Long;

.field private dateBackupUpdated:Ljava/lang/Long;

.field private expLink:Ljava/lang/String;

.field private expSBVersionCodeRequired:Ljava/lang/Long;

.field private expSBVersionNameRequired:Ljava/lang/String;

.field private expSize:Ljava/lang/Long;

.field private expSizeMirrored:Ljava/lang/Long;

.field private expansionBackupDate:Ljava/lang/Long;

.field private extDataBackupDate:Ljava/lang/Long;

.field private extDataEncryptionMethod:Ljava/lang/String;

.field private extDataLink:Ljava/lang/String;

.field private extDataPasswordHash:Ljava/lang/String;

.field private extDataSBVersionCodeRequired:Ljava/lang/Long;

.field private extDataSBVersionNameRequired:Ljava/lang/String;

.field private extDataSize:Ljava/lang/Long;

.field private extDataSizeMirrored:Ljava/lang/Long;

.field private installerPackage:Ljava/lang/String;

.field private isDataEncrypted:Ljava/lang/Boolean;

.field private isExtDataEncrypted:Ljava/lang/Boolean;

.field private isMediaEncrypted:Ljava/lang/Boolean;

.field private keyVersion:Ljava/lang/Integer;

.field private mediaBackupDate:Ljava/lang/Long;

.field private mediaEncryptionMethod:Ljava/lang/String;

.field private mediaLink:Ljava/lang/String;

.field private mediaPasswordHash:Ljava/lang/String;

.field private mediaSBVersionCodeRequired:Ljava/lang/Long;

.field private mediaSBVersionNameRequired:Ljava/lang/String;

.field private mediaSize:Ljava/lang/Long;

.field private mediaSizeMirrored:Ljava/lang/Long;

.field private minSBVersionCodeRequired:Ljava/lang/Long;

.field private name:Ljava/lang/String;

.field private ntfAccessComponent:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private permissionIdsCsv:Ljava/lang/String;

.field private permissionStatesCsv:Ljava/lang/String;

.field private sharedLibsLink:Ljava/lang/String;

.field private sharedLibsSBVersionCodeRequired:Ljava/lang/Long;

.field private sharedLibsSBVersionNameRequired:Ljava/lang/String;

.field private sharedLibsSize:Ljava/lang/Long;

.field private sharedLibsSizeMirrored:Ljava/lang/Long;

.field private specialDataLink:Ljava/lang/String;

.field private specialDataSize:Ljava/lang/Long;

.field private splitsLink:Ljava/lang/String;

.field private splitsSBVersionCodeRequired:Ljava/lang/Long;

.field private splitsSBVersionNameRequired:Ljava/lang/String;

.field private splitsSize:Ljava/lang/Long;

.field private splitsSizeMirrored:Ljava/lang/Long;

.field private ssaid:Ljava/lang/String;

.field private versionCode:Ljava/lang/Long;

.field private versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->Companion:Lorg/swiftapps/swiftbackup/model/app/CloudMetadata$a;

    .line 8
    .line 9
    new-instance v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata$b;

    .line 10
    .line 11
    invoke-direct {v0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata$b;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 71

    .line 69
    const/16 v69, 0x3

    const/16 v70, 0x0

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

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, -0x1

    const/16 v68, -0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v70}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->packageName:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->name:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dateBackup:Ljava/lang/Long;

    .line 6
    iput-object p4, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dateBackupUpdated:Ljava/lang/Long;

    .line 7
    iput-object p5, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->versionName:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->versionCode:Ljava/lang/Long;

    .line 9
    iput-object p7, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkLink:Ljava/lang/String;

    .line 10
    iput-object p8, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSize:Ljava/lang/Long;

    .line 11
    iput-object p9, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkBackupDate:Ljava/lang/Long;

    .line 12
    iput-object p10, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSBVersionCodeRequired:Ljava/lang/Long;

    .line 13
    iput-object p11, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSBVersionNameRequired:Ljava/lang/String;

    .line 14
    iput-object p12, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsLink:Ljava/lang/String;

    .line 15
    iput-object p13, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSize:Ljava/lang/Long;

    .line 16
    iput-object p14, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSizeMirrored:Ljava/lang/Long;

    .line 17
    iput-object p15, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSBVersionCodeRequired:Ljava/lang/Long;

    move-object/from16 p1, p16

    .line 18
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSBVersionNameRequired:Ljava/lang/String;

    move-object/from16 p1, p17

    .line 19
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsLink:Ljava/lang/String;

    move-object/from16 p1, p18

    .line 20
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSize:Ljava/lang/Long;

    move-object/from16 p1, p19

    .line 21
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSizeMirrored:Ljava/lang/Long;

    move-object/from16 p1, p20

    .line 22
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSBVersionCodeRequired:Ljava/lang/Long;

    move-object/from16 p1, p21

    .line 23
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSBVersionNameRequired:Ljava/lang/String;

    move-object/from16 p1, p22

    .line 24
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataLink:Ljava/lang/String;

    move-object/from16 p1, p23

    .line 25
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSize:Ljava/lang/Long;

    move-object/from16 p1, p24

    .line 26
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSizeMirrored:Ljava/lang/Long;

    move-object/from16 p1, p25

    .line 27
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isDataEncrypted:Ljava/lang/Boolean;

    move-object/from16 p1, p26

    .line 28
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataEncryptionMethod:Ljava/lang/String;

    move-object/from16 p1, p27

    .line 29
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataPasswordHash:Ljava/lang/String;

    move-object/from16 p1, p28

    .line 30
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataBackupDate:Ljava/lang/Long;

    move-object/from16 p1, p29

    .line 31
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSBVersionCodeRequired:Ljava/lang/Long;

    move-object/from16 p1, p30

    .line 32
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSBVersionNameRequired:Ljava/lang/String;

    move-object/from16 p1, p31

    .line 33
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataLink:Ljava/lang/String;

    move-object/from16 p1, p32

    .line 34
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSize:Ljava/lang/Long;

    move-object/from16 p1, p33

    .line 35
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSizeMirrored:Ljava/lang/Long;

    move-object/from16 p1, p34

    .line 36
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isExtDataEncrypted:Ljava/lang/Boolean;

    move-object/from16 p1, p35

    .line 37
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataEncryptionMethod:Ljava/lang/String;

    move-object/from16 p1, p36

    .line 38
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataPasswordHash:Ljava/lang/String;

    move-object/from16 p1, p37

    .line 39
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataBackupDate:Ljava/lang/Long;

    move-object/from16 p1, p38

    .line 40
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSBVersionCodeRequired:Ljava/lang/Long;

    move-object/from16 p1, p39

    .line 41
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSBVersionNameRequired:Ljava/lang/String;

    move-object/from16 p1, p40

    .line 42
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaLink:Ljava/lang/String;

    move-object/from16 p1, p41

    .line 43
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSize:Ljava/lang/Long;

    move-object/from16 p1, p42

    .line 44
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSizeMirrored:Ljava/lang/Long;

    move-object/from16 p1, p43

    .line 45
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isMediaEncrypted:Ljava/lang/Boolean;

    move-object/from16 p1, p44

    .line 46
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaEncryptionMethod:Ljava/lang/String;

    move-object/from16 p1, p45

    .line 47
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaPasswordHash:Ljava/lang/String;

    move-object/from16 p1, p46

    .line 48
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaBackupDate:Ljava/lang/Long;

    move-object/from16 p1, p47

    .line 49
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSBVersionCodeRequired:Ljava/lang/Long;

    move-object/from16 p1, p48

    .line 50
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSBVersionNameRequired:Ljava/lang/String;

    move-object/from16 p1, p49

    .line 51
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expLink:Ljava/lang/String;

    move-object/from16 p1, p50

    .line 52
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSize:Ljava/lang/Long;

    move-object/from16 p1, p51

    .line 53
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSizeMirrored:Ljava/lang/Long;

    move-object/from16 p1, p52

    .line 54
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expansionBackupDate:Ljava/lang/Long;

    move-object/from16 p1, p53

    .line 55
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSBVersionCodeRequired:Ljava/lang/Long;

    move-object/from16 p1, p54

    .line 56
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSBVersionNameRequired:Ljava/lang/String;

    move-object/from16 p1, p55

    .line 57
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->minSBVersionCodeRequired:Ljava/lang/Long;

    move-object/from16 p1, p56

    .line 58
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->permissionIdsCsv:Ljava/lang/String;

    move-object/from16 p1, p57

    .line 59
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->permissionStatesCsv:Ljava/lang/String;

    move-object/from16 p1, p58

    .line 60
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->ntfAccessComponent:Ljava/lang/String;

    move-object/from16 p1, p59

    .line 61
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->specialDataLink:Ljava/lang/String;

    move-object/from16 p1, p60

    .line 62
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->specialDataSize:Ljava/lang/Long;

    move-object/from16 p1, p61

    .line 63
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->accessibilityComponent:Ljava/lang/String;

    move-object/from16 p1, p62

    .line 64
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->ssaid:Ljava/lang/String;

    move-object/from16 p1, p63

    .line 65
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->installerPackage:Ljava/lang/String;

    move-object/from16 p1, p64

    .line 66
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->_protectedBackup:Ljava/lang/Boolean;

    move-object/from16 p1, p65

    .line 67
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->_note:Ljava/lang/String;

    move-object/from16 p1, p66

    .line 68
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->keyVersion:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 57

    move/from16 v0, p67

    move/from16 v1, p68

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
    move-object/from16 p70, v2

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

    and-int v47, v1, v47

    if-eqz v47, :cond_37

    const/16 v47, 0x0

    goto :goto_37

    :cond_37
    move-object/from16 v47, p56

    :goto_37
    const/high16 v48, 0x1000000

    and-int v48, v1, v48

    if-eqz v48, :cond_38

    const/16 v48, 0x0

    goto :goto_38

    :cond_38
    move-object/from16 v48, p57

    :goto_38
    const/high16 v49, 0x2000000

    and-int v49, v1, v49

    if-eqz v49, :cond_39

    const/16 v49, 0x0

    goto :goto_39

    :cond_39
    move-object/from16 v49, p58

    :goto_39
    const/high16 v50, 0x4000000

    and-int v50, v1, v50

    if-eqz v50, :cond_3a

    const/16 v50, 0x0

    goto :goto_3a

    :cond_3a
    move-object/from16 v50, p59

    :goto_3a
    const/high16 v51, 0x8000000

    and-int v51, v1, v51

    if-eqz v51, :cond_3b

    const/16 v51, 0x0

    goto :goto_3b

    :cond_3b
    move-object/from16 v51, p60

    :goto_3b
    const/high16 v52, 0x10000000

    and-int v52, v1, v52

    if-eqz v52, :cond_3c

    const/16 v52, 0x0

    goto :goto_3c

    :cond_3c
    move-object/from16 v52, p61

    :goto_3c
    const/high16 v53, 0x20000000

    and-int v53, v1, v53

    if-eqz v53, :cond_3d

    const/16 v53, 0x0

    goto :goto_3d

    :cond_3d
    move-object/from16 v53, p62

    :goto_3d
    const/high16 v54, 0x40000000    # 2.0f

    and-int v54, v1, v54

    if-eqz v54, :cond_3e

    const/16 v54, 0x0

    goto :goto_3e

    :cond_3e
    move-object/from16 v54, p63

    :goto_3e
    const/high16 v55, -0x80000000

    and-int v1, v1, v55

    if-eqz v1, :cond_3f

    const/4 v1, 0x0

    goto :goto_3f

    :cond_3f
    move-object/from16 v1, p64

    :goto_3f
    and-int/lit8 v55, p69, 0x1

    if-eqz v55, :cond_40

    const/16 v55, 0x0

    goto :goto_40

    :cond_40
    move-object/from16 v55, p65

    :goto_40
    and-int/lit8 v56, p69, 0x2

    if-eqz v56, :cond_41

    const/16 p67, 0x0

    :goto_41
    move-object/from16 p1, p0

    move-object/from16 p33, p2

    move-object/from16 p41, p3

    move-object/from16 p42, p4

    move-object/from16 p43, p5

    move-object/from16 p44, p6

    move-object/from16 p45, p7

    move-object/from16 p46, p8

    move-object/from16 p47, p9

    move-object/from16 p2, p70

    move-object/from16 p48, v0

    move-object/from16 p65, v1

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

    move-object/from16 p57, v47

    move-object/from16 p58, v48

    move-object/from16 p59, v49

    move-object/from16 p60, v50

    move-object/from16 p61, v51

    move-object/from16 p62, v52

    move-object/from16 p63, v53

    move-object/from16 p64, v54

    move-object/from16 p66, v55

    goto :goto_42

    :cond_41
    move-object/from16 p67, p66

    goto/16 :goto_41

    :goto_42
    invoke-direct/range {p1 .. p67}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private final clearLegacyPerPartSBVersionFields()V
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSBVersionCodeRequired:Ljava/lang/Long;

    .line 3
    .line 4
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSBVersionNameRequired:Ljava/lang/String;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSBVersionCodeRequired:Ljava/lang/Long;

    .line 7
    .line 8
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSBVersionNameRequired:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSBVersionCodeRequired:Ljava/lang/Long;

    .line 11
    .line 12
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSBVersionNameRequired:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSBVersionCodeRequired:Ljava/lang/Long;

    .line 15
    .line 16
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSBVersionNameRequired:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSBVersionCodeRequired:Ljava/lang/Long;

    .line 19
    .line 20
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSBVersionNameRequired:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSBVersionCodeRequired:Ljava/lang/Long;

    .line 23
    .line 24
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSBVersionNameRequired:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSBVersionCodeRequired:Ljava/lang/Long;

    .line 27
    .line 28
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSBVersionNameRequired:Ljava/lang/String;

    .line 29
    .line 30
    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;IIILjava/lang/Object;)Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p67

    move/from16 v2, p68

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_0

    iget-object v3, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v4, p2

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dateBackup:Ljava/lang/Long;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p3

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dateBackupUpdated:Ljava/lang/Long;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p4

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->versionName:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->versionCode:Ljava/lang/Long;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkLink:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSize:Ljava/lang/Long;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkBackupDate:Ljava/lang/Long;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p9

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-object v12, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSBVersionCodeRequired:Ljava/lang/Long;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p10

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget-object v13, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSBVersionNameRequired:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v13, p11

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget-object v14, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsLink:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p12

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSize:Ljava/lang/Long;

    goto :goto_c

    :cond_c
    move-object/from16 v15, p13

    :goto_c
    move-object/from16 p1, v3

    and-int/lit16 v3, v1, 0x2000

    if-eqz v3, :cond_d

    iget-object v3, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSizeMirrored:Ljava/lang/Long;

    goto :goto_d

    :cond_d
    move-object/from16 v3, p14

    :goto_d
    move-object/from16 p2, v3

    and-int/lit16 v3, v1, 0x4000

    if-eqz v3, :cond_e

    iget-object v3, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSBVersionCodeRequired:Ljava/lang/Long;

    goto :goto_e

    :cond_e
    move-object/from16 v3, p15

    :goto_e
    const v16, 0x8000

    and-int v17, v1, v16

    if-eqz v17, :cond_f

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSBVersionNameRequired:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v18, p67, v17

    move-object/from16 p3, v1

    if-eqz v18, :cond_10

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsLink:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v1, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v19, p67, v18

    move-object/from16 p4, v1

    if-eqz v19, :cond_11

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSize:Ljava/lang/Long;

    goto :goto_11

    :cond_11
    move-object/from16 v1, p18

    :goto_11
    const/high16 v19, 0x40000

    and-int v20, p67, v19

    move-object/from16 p5, v1

    if-eqz v20, :cond_12

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSizeMirrored:Ljava/lang/Long;

    goto :goto_12

    :cond_12
    move-object/from16 v1, p19

    :goto_12
    const/high16 v20, 0x80000

    and-int v21, p67, v20

    move-object/from16 p6, v1

    if-eqz v21, :cond_13

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSBVersionCodeRequired:Ljava/lang/Long;

    goto :goto_13

    :cond_13
    move-object/from16 v1, p20

    :goto_13
    const/high16 v21, 0x100000

    and-int v22, p67, v21

    move-object/from16 p7, v1

    if-eqz v22, :cond_14

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSBVersionNameRequired:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 v1, p21

    :goto_14
    const/high16 v22, 0x200000

    and-int v23, p67, v22

    move-object/from16 p8, v1

    if-eqz v23, :cond_15

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataLink:Ljava/lang/String;

    goto :goto_15

    :cond_15
    move-object/from16 v1, p22

    :goto_15
    const/high16 v23, 0x400000

    and-int v23, p67, v23

    move-object/from16 p9, v1

    if-eqz v23, :cond_16

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSize:Ljava/lang/Long;

    goto :goto_16

    :cond_16
    move-object/from16 v1, p23

    :goto_16
    const/high16 v23, 0x800000

    and-int v23, p67, v23

    move-object/from16 p10, v1

    if-eqz v23, :cond_17

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSizeMirrored:Ljava/lang/Long;

    goto :goto_17

    :cond_17
    move-object/from16 v1, p24

    :goto_17
    const/high16 v23, 0x1000000

    and-int v23, p67, v23

    move-object/from16 p11, v1

    if-eqz v23, :cond_18

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isDataEncrypted:Ljava/lang/Boolean;

    goto :goto_18

    :cond_18
    move-object/from16 v1, p25

    :goto_18
    const/high16 v23, 0x2000000

    and-int v23, p67, v23

    move-object/from16 p12, v1

    if-eqz v23, :cond_19

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataEncryptionMethod:Ljava/lang/String;

    goto :goto_19

    :cond_19
    move-object/from16 v1, p26

    :goto_19
    const/high16 v23, 0x4000000

    and-int v23, p67, v23

    move-object/from16 p13, v1

    if-eqz v23, :cond_1a

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataPasswordHash:Ljava/lang/String;

    goto :goto_1a

    :cond_1a
    move-object/from16 v1, p27

    :goto_1a
    const/high16 v23, 0x8000000

    and-int v23, p67, v23

    move-object/from16 p14, v1

    if-eqz v23, :cond_1b

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataBackupDate:Ljava/lang/Long;

    goto :goto_1b

    :cond_1b
    move-object/from16 v1, p28

    :goto_1b
    const/high16 v23, 0x10000000

    and-int v23, p67, v23

    move-object/from16 p15, v1

    if-eqz v23, :cond_1c

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSBVersionCodeRequired:Ljava/lang/Long;

    goto :goto_1c

    :cond_1c
    move-object/from16 v1, p29

    :goto_1c
    const/high16 v23, 0x20000000

    and-int v23, p67, v23

    move-object/from16 p16, v1

    if-eqz v23, :cond_1d

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSBVersionNameRequired:Ljava/lang/String;

    goto :goto_1d

    :cond_1d
    move-object/from16 v1, p30

    :goto_1d
    const/high16 v23, 0x40000000    # 2.0f

    and-int v23, p67, v23

    move-object/from16 p17, v1

    if-eqz v23, :cond_1e

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataLink:Ljava/lang/String;

    goto :goto_1e

    :cond_1e
    move-object/from16 v1, p31

    :goto_1e
    const/high16 v23, -0x80000000

    and-int v23, p67, v23

    move-object/from16 p18, v1

    if-eqz v23, :cond_1f

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSize:Ljava/lang/Long;

    goto :goto_1f

    :cond_1f
    move-object/from16 v1, p32

    :goto_1f
    and-int/lit8 v23, v2, 0x1

    move-object/from16 p19, v1

    if-eqz v23, :cond_20

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSizeMirrored:Ljava/lang/Long;

    goto :goto_20

    :cond_20
    move-object/from16 v1, p33

    :goto_20
    and-int/lit8 v23, v2, 0x2

    move-object/from16 p20, v1

    if-eqz v23, :cond_21

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isExtDataEncrypted:Ljava/lang/Boolean;

    goto :goto_21

    :cond_21
    move-object/from16 v1, p34

    :goto_21
    and-int/lit8 v23, v2, 0x4

    move-object/from16 p21, v1

    if-eqz v23, :cond_22

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataEncryptionMethod:Ljava/lang/String;

    goto :goto_22

    :cond_22
    move-object/from16 v1, p35

    :goto_22
    and-int/lit8 v23, v2, 0x8

    move-object/from16 p22, v1

    if-eqz v23, :cond_23

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataPasswordHash:Ljava/lang/String;

    goto :goto_23

    :cond_23
    move-object/from16 v1, p36

    :goto_23
    and-int/lit8 v23, v2, 0x10

    move-object/from16 p23, v1

    if-eqz v23, :cond_24

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataBackupDate:Ljava/lang/Long;

    goto :goto_24

    :cond_24
    move-object/from16 v1, p37

    :goto_24
    and-int/lit8 v23, v2, 0x20

    move-object/from16 p24, v1

    if-eqz v23, :cond_25

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSBVersionCodeRequired:Ljava/lang/Long;

    goto :goto_25

    :cond_25
    move-object/from16 v1, p38

    :goto_25
    and-int/lit8 v23, v2, 0x40

    move-object/from16 p25, v1

    if-eqz v23, :cond_26

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSBVersionNameRequired:Ljava/lang/String;

    goto :goto_26

    :cond_26
    move-object/from16 v1, p39

    :goto_26
    move-object/from16 p26, v1

    and-int/lit16 v1, v2, 0x80

    if-eqz v1, :cond_27

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaLink:Ljava/lang/String;

    goto :goto_27

    :cond_27
    move-object/from16 v1, p40

    :goto_27
    move-object/from16 p27, v1

    and-int/lit16 v1, v2, 0x100

    if-eqz v1, :cond_28

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSize:Ljava/lang/Long;

    goto :goto_28

    :cond_28
    move-object/from16 v1, p41

    :goto_28
    move-object/from16 p28, v1

    and-int/lit16 v1, v2, 0x200

    if-eqz v1, :cond_29

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSizeMirrored:Ljava/lang/Long;

    goto :goto_29

    :cond_29
    move-object/from16 v1, p42

    :goto_29
    move-object/from16 p29, v1

    and-int/lit16 v1, v2, 0x400

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isMediaEncrypted:Ljava/lang/Boolean;

    goto :goto_2a

    :cond_2a
    move-object/from16 v1, p43

    :goto_2a
    move-object/from16 p30, v1

    and-int/lit16 v1, v2, 0x800

    if-eqz v1, :cond_2b

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaEncryptionMethod:Ljava/lang/String;

    goto :goto_2b

    :cond_2b
    move-object/from16 v1, p44

    :goto_2b
    move-object/from16 p31, v1

    and-int/lit16 v1, v2, 0x1000

    if-eqz v1, :cond_2c

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaPasswordHash:Ljava/lang/String;

    goto :goto_2c

    :cond_2c
    move-object/from16 v1, p45

    :goto_2c
    move-object/from16 p32, v1

    and-int/lit16 v1, v2, 0x2000

    if-eqz v1, :cond_2d

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaBackupDate:Ljava/lang/Long;

    goto :goto_2d

    :cond_2d
    move-object/from16 v1, p46

    :goto_2d
    move-object/from16 p33, v1

    and-int/lit16 v1, v2, 0x4000

    if-eqz v1, :cond_2e

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSBVersionCodeRequired:Ljava/lang/Long;

    goto :goto_2e

    :cond_2e
    move-object/from16 v1, p47

    :goto_2e
    and-int v16, v2, v16

    move-object/from16 p34, v1

    if-eqz v16, :cond_2f

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSBVersionNameRequired:Ljava/lang/String;

    goto :goto_2f

    :cond_2f
    move-object/from16 v1, p48

    :goto_2f
    and-int v16, v2, v17

    move-object/from16 p35, v1

    if-eqz v16, :cond_30

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expLink:Ljava/lang/String;

    goto :goto_30

    :cond_30
    move-object/from16 v1, p49

    :goto_30
    and-int v16, v2, v18

    move-object/from16 p36, v1

    if-eqz v16, :cond_31

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSize:Ljava/lang/Long;

    goto :goto_31

    :cond_31
    move-object/from16 v1, p50

    :goto_31
    and-int v16, v2, v19

    move-object/from16 p37, v1

    if-eqz v16, :cond_32

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSizeMirrored:Ljava/lang/Long;

    goto :goto_32

    :cond_32
    move-object/from16 v1, p51

    :goto_32
    and-int v16, v2, v20

    move-object/from16 p38, v1

    if-eqz v16, :cond_33

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expansionBackupDate:Ljava/lang/Long;

    goto :goto_33

    :cond_33
    move-object/from16 v1, p52

    :goto_33
    and-int v16, v2, v21

    move-object/from16 p39, v1

    if-eqz v16, :cond_34

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSBVersionCodeRequired:Ljava/lang/Long;

    goto :goto_34

    :cond_34
    move-object/from16 v1, p53

    :goto_34
    and-int v16, v2, v22

    move-object/from16 p40, v1

    if-eqz v16, :cond_35

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSBVersionNameRequired:Ljava/lang/String;

    goto :goto_35

    :cond_35
    move-object/from16 v1, p54

    :goto_35
    const/high16 v16, 0x400000

    and-int v16, v2, v16

    move-object/from16 p41, v1

    if-eqz v16, :cond_36

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->minSBVersionCodeRequired:Ljava/lang/Long;

    goto :goto_36

    :cond_36
    move-object/from16 v1, p55

    :goto_36
    const/high16 v16, 0x800000

    and-int v16, v2, v16

    move-object/from16 p42, v1

    if-eqz v16, :cond_37

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->permissionIdsCsv:Ljava/lang/String;

    goto :goto_37

    :cond_37
    move-object/from16 v1, p56

    :goto_37
    const/high16 v16, 0x1000000

    and-int v16, v2, v16

    move-object/from16 p43, v1

    if-eqz v16, :cond_38

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->permissionStatesCsv:Ljava/lang/String;

    goto :goto_38

    :cond_38
    move-object/from16 v1, p57

    :goto_38
    const/high16 v16, 0x2000000

    and-int v16, v2, v16

    move-object/from16 p44, v1

    if-eqz v16, :cond_39

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->ntfAccessComponent:Ljava/lang/String;

    goto :goto_39

    :cond_39
    move-object/from16 v1, p58

    :goto_39
    const/high16 v16, 0x4000000

    and-int v16, v2, v16

    move-object/from16 p45, v1

    if-eqz v16, :cond_3a

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->specialDataLink:Ljava/lang/String;

    goto :goto_3a

    :cond_3a
    move-object/from16 v1, p59

    :goto_3a
    const/high16 v16, 0x8000000

    and-int v16, v2, v16

    move-object/from16 p46, v1

    if-eqz v16, :cond_3b

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->specialDataSize:Ljava/lang/Long;

    goto :goto_3b

    :cond_3b
    move-object/from16 v1, p60

    :goto_3b
    const/high16 v16, 0x10000000

    and-int v16, v2, v16

    move-object/from16 p47, v1

    if-eqz v16, :cond_3c

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->accessibilityComponent:Ljava/lang/String;

    goto :goto_3c

    :cond_3c
    move-object/from16 v1, p61

    :goto_3c
    const/high16 v16, 0x20000000

    and-int v16, v2, v16

    move-object/from16 p48, v1

    if-eqz v16, :cond_3d

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->ssaid:Ljava/lang/String;

    goto :goto_3d

    :cond_3d
    move-object/from16 v1, p62

    :goto_3d
    const/high16 v16, 0x40000000    # 2.0f

    and-int v16, v2, v16

    move-object/from16 p49, v1

    if-eqz v16, :cond_3e

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->installerPackage:Ljava/lang/String;

    goto :goto_3e

    :cond_3e
    move-object/from16 v1, p63

    :goto_3e
    const/high16 v16, -0x80000000

    and-int v2, v2, v16

    if-eqz v2, :cond_3f

    iget-object v2, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->_protectedBackup:Ljava/lang/Boolean;

    goto :goto_3f

    :cond_3f
    move-object/from16 v2, p64

    :goto_3f
    and-int/lit8 v16, p69, 0x1

    move-object/from16 p50, v1

    if-eqz v16, :cond_40

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->_note:Ljava/lang/String;

    goto :goto_40

    :cond_40
    move-object/from16 v1, p65

    :goto_40
    and-int/lit8 v16, p69, 0x2

    if-eqz v16, :cond_41

    move-object/from16 p51, v1

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->keyVersion:Ljava/lang/Integer;

    move-object/from16 p66, p51

    move-object/from16 p67, v1

    move-object/from16 p52, p38

    move-object/from16 p53, p39

    move-object/from16 p54, p40

    move-object/from16 p55, p41

    move-object/from16 p56, p42

    move-object/from16 p57, p43

    move-object/from16 p58, p44

    move-object/from16 p59, p45

    move-object/from16 p60, p46

    move-object/from16 p61, p47

    move-object/from16 p62, p48

    move-object/from16 p63, p49

    move-object/from16 p64, p50

    move-object/from16 p65, v2

    move-object/from16 p38, p24

    move-object/from16 p39, p25

    move-object/from16 p40, p26

    move-object/from16 p41, p27

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

    move-object/from16 p24, p10

    move-object/from16 p25, p11

    move-object/from16 p26, p12

    move-object/from16 p27, p13

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

    move-object/from16 p16, v3

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v15

    move-object/from16 p15, p2

    move-object/from16 p17, p3

    move-object/from16 p18, p4

    move-object/from16 p19, p5

    move-object/from16 p20, p6

    move-object/from16 p21, p7

    move-object/from16 p22, p8

    move-object/from16 p23, p9

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    :goto_41
    move-object/from16 p2, p1

    move-object/from16 p1, v0

    goto/16 :goto_42

    :cond_41
    move-object/from16 p67, p66

    move-object/from16 p66, v1

    move-object/from16 p51, p37

    move-object/from16 p52, p38

    move-object/from16 p53, p39

    move-object/from16 p54, p40

    move-object/from16 p55, p41

    move-object/from16 p56, p42

    move-object/from16 p57, p43

    move-object/from16 p58, p44

    move-object/from16 p59, p45

    move-object/from16 p60, p46

    move-object/from16 p61, p47

    move-object/from16 p62, p48

    move-object/from16 p63, p49

    move-object/from16 p64, p50

    move-object/from16 p65, v2

    move-object/from16 p37, p23

    move-object/from16 p38, p24

    move-object/from16 p39, p25

    move-object/from16 p40, p26

    move-object/from16 p41, p27

    move-object/from16 p42, p28

    move-object/from16 p43, p29

    move-object/from16 p44, p30

    move-object/from16 p45, p31

    move-object/from16 p46, p32

    move-object/from16 p47, p33

    move-object/from16 p48, p34

    move-object/from16 p49, p35

    move-object/from16 p50, p36

    move-object/from16 p23, p9

    move-object/from16 p24, p10

    move-object/from16 p25, p11

    move-object/from16 p26, p12

    move-object/from16 p27, p13

    move-object/from16 p28, p14

    move-object/from16 p29, p15

    move-object/from16 p30, p16

    move-object/from16 p31, p17

    move-object/from16 p32, p18

    move-object/from16 p33, p19

    move-object/from16 p34, p20

    move-object/from16 p35, p21

    move-object/from16 p36, p22

    move-object/from16 p16, v3

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v15

    move-object/from16 p15, p2

    move-object/from16 p17, p3

    move-object/from16 p18, p4

    move-object/from16 p19, p5

    move-object/from16 p20, p6

    move-object/from16 p21, p7

    move-object/from16 p22, p8

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    goto/16 :goto_41

    :goto_42
    invoke-virtual/range {p1 .. p67}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;)Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component10()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component11()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component12()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component13()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component14()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSizeMirrored:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component15()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component16()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component17()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component18()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component19()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSizeMirrored:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component20()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component21()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component22()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component23()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component24()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSizeMirrored:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component25()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isDataEncrypted:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component26()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataEncryptionMethod:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component27()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataPasswordHash:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component28()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataBackupDate:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component29()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dateBackup:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component30()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component31()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component32()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component33()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSizeMirrored:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component34()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isExtDataEncrypted:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component35()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataEncryptionMethod:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component36()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataPasswordHash:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component37()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataBackupDate:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component38()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component39()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component4()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dateBackupUpdated:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component40()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component41()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component42()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSizeMirrored:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component43()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isMediaEncrypted:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component44()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaEncryptionMethod:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component45()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaPasswordHash:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component46()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaBackupDate:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component47()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component48()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component49()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->versionName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component50()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component51()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSizeMirrored:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component52()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expansionBackupDate:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component53()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component54()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component55()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->minSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component56()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->permissionIdsCsv:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component57()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->permissionStatesCsv:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component58()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->ntfAccessComponent:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component59()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->specialDataLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component6()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->versionCode:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component60()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->specialDataSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component61()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->accessibilityComponent:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component62()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->ssaid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component63()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->installerPackage:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component64()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->_protectedBackup:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component65()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->_note:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component66()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->keyVersion:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component8()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component9()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkBackupDate:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;)Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;
    .locals 67

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

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

    move-object/from16 v57, p57

    move-object/from16 v58, p58

    move-object/from16 v59, p59

    move-object/from16 v60, p60

    move-object/from16 v61, p61

    move-object/from16 v62, p62

    move-object/from16 v63, p63

    move-object/from16 v64, p64

    move-object/from16 v65, p65

    move-object/from16 v66, p66

    invoke-direct/range {v0 .. v66}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;)V

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
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->packageName:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->packageName:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->name:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->name:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dateBackup:Ljava/lang/Long;

    .line 36
    .line 37
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dateBackup:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dateBackupUpdated:Ljava/lang/Long;

    .line 47
    .line 48
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dateBackupUpdated:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->versionName:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->versionName:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->versionCode:Ljava/lang/Long;

    .line 69
    .line 70
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->versionCode:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkLink:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkLink:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSize:Ljava/lang/Long;

    .line 91
    .line 92
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSize:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkBackupDate:Ljava/lang/Long;

    .line 102
    .line 103
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkBackupDate:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSBVersionCodeRequired:Ljava/lang/Long;

    .line 113
    .line 114
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSBVersionCodeRequired:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSBVersionNameRequired:Ljava/lang/String;

    .line 124
    .line 125
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSBVersionNameRequired:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsLink:Ljava/lang/String;

    .line 135
    .line 136
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsLink:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSize:Ljava/lang/Long;

    .line 146
    .line 147
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSize:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSizeMirrored:Ljava/lang/Long;

    .line 157
    .line 158
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSizeMirrored:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSBVersionCodeRequired:Ljava/lang/Long;

    .line 168
    .line 169
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSBVersionCodeRequired:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSBVersionNameRequired:Ljava/lang/String;

    .line 179
    .line 180
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSBVersionNameRequired:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsLink:Ljava/lang/String;

    .line 190
    .line 191
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsLink:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSize:Ljava/lang/Long;

    .line 201
    .line 202
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSize:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSizeMirrored:Ljava/lang/Long;

    .line 212
    .line 213
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSizeMirrored:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSBVersionCodeRequired:Ljava/lang/Long;

    .line 223
    .line 224
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSBVersionCodeRequired:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSBVersionNameRequired:Ljava/lang/String;

    .line 234
    .line 235
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSBVersionNameRequired:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataLink:Ljava/lang/String;

    .line 245
    .line 246
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataLink:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSize:Ljava/lang/Long;

    .line 256
    .line 257
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSize:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSizeMirrored:Ljava/lang/Long;

    .line 267
    .line 268
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSizeMirrored:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isDataEncrypted:Ljava/lang/Boolean;

    .line 278
    .line 279
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isDataEncrypted:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataEncryptionMethod:Ljava/lang/String;

    .line 289
    .line 290
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataEncryptionMethod:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataPasswordHash:Ljava/lang/String;

    .line 300
    .line 301
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataPasswordHash:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataBackupDate:Ljava/lang/Long;

    .line 311
    .line 312
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataBackupDate:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSBVersionCodeRequired:Ljava/lang/Long;

    .line 322
    .line 323
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSBVersionCodeRequired:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSBVersionNameRequired:Ljava/lang/String;

    .line 333
    .line 334
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSBVersionNameRequired:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataLink:Ljava/lang/String;

    .line 344
    .line 345
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataLink:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSize:Ljava/lang/Long;

    .line 355
    .line 356
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSize:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSizeMirrored:Ljava/lang/Long;

    .line 366
    .line 367
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSizeMirrored:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isExtDataEncrypted:Ljava/lang/Boolean;

    .line 377
    .line 378
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isExtDataEncrypted:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataEncryptionMethod:Ljava/lang/String;

    .line 388
    .line 389
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataEncryptionMethod:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataPasswordHash:Ljava/lang/String;

    .line 399
    .line 400
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataPasswordHash:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataBackupDate:Ljava/lang/Long;

    .line 410
    .line 411
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataBackupDate:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSBVersionCodeRequired:Ljava/lang/Long;

    .line 421
    .line 422
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSBVersionCodeRequired:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSBVersionNameRequired:Ljava/lang/String;

    .line 432
    .line 433
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSBVersionNameRequired:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaLink:Ljava/lang/String;

    .line 443
    .line 444
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaLink:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSize:Ljava/lang/Long;

    .line 454
    .line 455
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSize:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSizeMirrored:Ljava/lang/Long;

    .line 465
    .line 466
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSizeMirrored:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isMediaEncrypted:Ljava/lang/Boolean;

    .line 476
    .line 477
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isMediaEncrypted:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaEncryptionMethod:Ljava/lang/String;

    .line 487
    .line 488
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaEncryptionMethod:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaPasswordHash:Ljava/lang/String;

    .line 498
    .line 499
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaPasswordHash:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaBackupDate:Ljava/lang/Long;

    .line 509
    .line 510
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaBackupDate:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSBVersionCodeRequired:Ljava/lang/Long;

    .line 520
    .line 521
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSBVersionCodeRequired:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSBVersionNameRequired:Ljava/lang/String;

    .line 531
    .line 532
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSBVersionNameRequired:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expLink:Ljava/lang/String;

    .line 542
    .line 543
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expLink:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSize:Ljava/lang/Long;

    .line 553
    .line 554
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSize:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSizeMirrored:Ljava/lang/Long;

    .line 564
    .line 565
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSizeMirrored:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expansionBackupDate:Ljava/lang/Long;

    .line 575
    .line 576
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expansionBackupDate:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSBVersionCodeRequired:Ljava/lang/Long;

    .line 586
    .line 587
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSBVersionCodeRequired:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSBVersionNameRequired:Ljava/lang/String;

    .line 597
    .line 598
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSBVersionNameRequired:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->minSBVersionCodeRequired:Ljava/lang/Long;

    .line 608
    .line 609
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->minSBVersionCodeRequired:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->permissionIdsCsv:Ljava/lang/String;

    .line 619
    .line 620
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->permissionIdsCsv:Ljava/lang/String;

    .line 621
    .line 622
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 623
    .line 624
    .line 625
    move-result v1

    .line 626
    if-nez v1, :cond_39

    .line 627
    .line 628
    return v2

    .line 629
    :cond_39
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->permissionStatesCsv:Ljava/lang/String;

    .line 630
    .line 631
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->permissionStatesCsv:Ljava/lang/String;

    .line 632
    .line 633
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 634
    .line 635
    .line 636
    move-result v1

    .line 637
    if-nez v1, :cond_3a

    .line 638
    .line 639
    return v2

    .line 640
    :cond_3a
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->ntfAccessComponent:Ljava/lang/String;

    .line 641
    .line 642
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->ntfAccessComponent:Ljava/lang/String;

    .line 643
    .line 644
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 645
    .line 646
    .line 647
    move-result v1

    .line 648
    if-nez v1, :cond_3b

    .line 649
    .line 650
    return v2

    .line 651
    :cond_3b
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->specialDataLink:Ljava/lang/String;

    .line 652
    .line 653
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->specialDataLink:Ljava/lang/String;

    .line 654
    .line 655
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 656
    .line 657
    .line 658
    move-result v1

    .line 659
    if-nez v1, :cond_3c

    .line 660
    .line 661
    return v2

    .line 662
    :cond_3c
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->specialDataSize:Ljava/lang/Long;

    .line 663
    .line 664
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->specialDataSize:Ljava/lang/Long;

    .line 665
    .line 666
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 667
    .line 668
    .line 669
    move-result v1

    .line 670
    if-nez v1, :cond_3d

    .line 671
    .line 672
    return v2

    .line 673
    :cond_3d
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->accessibilityComponent:Ljava/lang/String;

    .line 674
    .line 675
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->accessibilityComponent:Ljava/lang/String;

    .line 676
    .line 677
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 678
    .line 679
    .line 680
    move-result v1

    .line 681
    if-nez v1, :cond_3e

    .line 682
    .line 683
    return v2

    .line 684
    :cond_3e
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->ssaid:Ljava/lang/String;

    .line 685
    .line 686
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->ssaid:Ljava/lang/String;

    .line 687
    .line 688
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 689
    .line 690
    .line 691
    move-result v1

    .line 692
    if-nez v1, :cond_3f

    .line 693
    .line 694
    return v2

    .line 695
    :cond_3f
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->installerPackage:Ljava/lang/String;

    .line 696
    .line 697
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->installerPackage:Ljava/lang/String;

    .line 698
    .line 699
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 700
    .line 701
    .line 702
    move-result v1

    .line 703
    if-nez v1, :cond_40

    .line 704
    .line 705
    return v2

    .line 706
    :cond_40
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->_protectedBackup:Ljava/lang/Boolean;

    .line 707
    .line 708
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->_protectedBackup:Ljava/lang/Boolean;

    .line 709
    .line 710
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 711
    .line 712
    .line 713
    move-result v1

    .line 714
    if-nez v1, :cond_41

    .line 715
    .line 716
    return v2

    .line 717
    :cond_41
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->_note:Ljava/lang/String;

    .line 718
    .line 719
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->_note:Ljava/lang/String;

    .line 720
    .line 721
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 722
    .line 723
    .line 724
    move-result v1

    .line 725
    if-nez v1, :cond_42

    .line 726
    .line 727
    return v2

    .line 728
    :cond_42
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->keyVersion:Ljava/lang/Integer;

    .line 729
    .line 730
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->keyVersion:Ljava/lang/Integer;

    .line 731
    .line 732
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 733
    .line 734
    .line 735
    move-result p0

    .line 736
    if-nez p0, :cond_43

    .line 737
    .line 738
    return v2

    .line 739
    :cond_43
    return v0
.end method

.method public final getAccessibilityComponent()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->accessibilityComponent:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getApkBackupDate()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkBackupDate:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getApkLink()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getApkSBVersionCodeRequired()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getApkSBVersionNameRequired()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getApkSize()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getApkSizeMirrored()Ljava/lang/Long;
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    sget-object v0, Lg00;->a:Lg00;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->packageName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p0}, Lg00;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getDataBackupDate()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataBackupDate:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDataEncryptionMethod()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataEncryptionMethod:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDataLink()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDataPasswordHash()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataPasswordHash:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDataSBVersionCodeRequired()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDataSBVersionNameRequired()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDataSize()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDataSizeMirrored()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSizeMirrored:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDateBackup()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dateBackup:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDateBackupUpdated()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dateBackupUpdated:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExpLink()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExpSBVersionCodeRequired()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExpSBVersionNameRequired()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExpSize()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExpSizeMirrored()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSizeMirrored:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExpansionBackupDate()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expansionBackupDate:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExtDataBackupDate()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataBackupDate:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExtDataEncryptionMethod()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataEncryptionMethod:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExtDataLink()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExtDataPasswordHash()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataPasswordHash:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExtDataSBVersionCodeRequired()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExtDataSBVersionNameRequired()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExtDataSize()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExtDataSizeMirrored()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSizeMirrored:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getInstallerPackage()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->installerPackage:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getKeyVersion()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->keyVersion:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMediaBackupDate()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaBackupDate:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMediaEncryptionMethod()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaEncryptionMethod:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMediaLink()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMediaPasswordHash()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaPasswordHash:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMediaSBVersionCodeRequired()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMediaSBVersionNameRequired()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMediaSize()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMediaSizeMirrored()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSizeMirrored:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMinSBVersionCodeRequired()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->minSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getNote()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->_note:Ljava/lang/String;

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
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->ntfAccessComponent:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPermissionIdsCsv()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->permissionIdsCsv:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPermissionStatesCsv()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->permissionStatesCsv:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSBVersionCodesRequired()Ljava/util/List;
    .locals 8
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
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->minSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSBVersionCodeRequired:Ljava/lang/Long;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSBVersionCodeRequired:Ljava/lang/Long;

    .line 6
    .line 7
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSBVersionCodeRequired:Ljava/lang/Long;

    .line 8
    .line 9
    iget-object v4, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSBVersionCodeRequired:Ljava/lang/Long;

    .line 10
    .line 11
    iget-object v5, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSBVersionCodeRequired:Ljava/lang/Long;

    .line 12
    .line 13
    iget-object v6, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSBVersionCodeRequired:Ljava/lang/Long;

    .line 14
    .line 15
    iget-object v7, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSBVersionCodeRequired:Ljava/lang/Long;

    .line 16
    .line 17
    filled-new-array/range {v0 .. v7}, [Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final getSharedLibsLink()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSharedLibsSBVersionCodeRequired()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSharedLibsSBVersionNameRequired()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSharedLibsSize()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSharedLibsSizeMirrored()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSizeMirrored:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSpecialDataLink()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->specialDataLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSpecialDataSize()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->specialDataSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSplitsLink()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSplitsSBVersionCodeRequired()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSplitsSBVersionNameRequired()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSplitsSize()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSplitsSizeMirrored()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSizeMirrored:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSsaid()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->ssaid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTotalApkSize()J
    .locals 4
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSize:Ljava/lang/Long;

    .line 2
    .line 3
    invoke-static {v0}, Lio4;->h(Ljava/lang/Long;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSize:Ljava/lang/Long;

    .line 8
    .line 9
    invoke-static {v2}, Lio4;->h(Ljava/lang/Long;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    add-long/2addr v2, v0

    .line 14
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSize:Ljava/lang/Long;

    .line 15
    .line 16
    invoke-static {p0}, Lio4;->h(Ljava/lang/Long;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    add-long/2addr v0, v2

    .line 21
    return-wide v0
.end method

.method public final getTotalSize()J
    .locals 4
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSize:Ljava/lang/Long;

    .line 2
    .line 3
    invoke-static {v0}, Lio4;->h(Ljava/lang/Long;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSize:Ljava/lang/Long;

    .line 8
    .line 9
    invoke-static {v2}, Lio4;->h(Ljava/lang/Long;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    add-long/2addr v2, v0

    .line 14
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSize:Ljava/lang/Long;

    .line 15
    .line 16
    invoke-static {v0}, Lio4;->h(Ljava/lang/Long;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    add-long/2addr v0, v2

    .line 21
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSize:Ljava/lang/Long;

    .line 22
    .line 23
    invoke-static {v2}, Lio4;->h(Ljava/lang/Long;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    add-long/2addr v2, v0

    .line 28
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSize:Ljava/lang/Long;

    .line 29
    .line 30
    invoke-static {v0}, Lio4;->h(Ljava/lang/Long;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    add-long/2addr v0, v2

    .line 35
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSize:Ljava/lang/Long;

    .line 36
    .line 37
    invoke-static {v2}, Lio4;->h(Ljava/lang/Long;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    add-long/2addr v2, v0

    .line 42
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSize:Ljava/lang/Long;

    .line 43
    .line 44
    invoke-static {v0}, Lio4;->h(Ljava/lang/Long;)J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    add-long/2addr v0, v2

    .line 49
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->specialDataSize:Ljava/lang/Long;

    .line 50
    .line 51
    invoke-static {p0}, Lio4;->h(Ljava/lang/Long;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    add-long/2addr v2, v0

    .line 56
    return-wide v2
.end method

.method public final getVersionCode()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->versionCode:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getVersionName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->versionName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_note()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->_note:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_protectedBackup()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->_protectedBackup:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hasApk()Z
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkLink:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

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

.method public final hasBackups()Z
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasApk()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasData()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasExtData()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasMedia()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasExpansion()Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    return p0

    .line 34
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 35
    return p0
.end method

.method public final hasData()Z
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataLink:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

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

.method public final hasExpansion()Z
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expLink:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

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

.method public final hasExtData()Z
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataLink:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

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
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaLink:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

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

.method public final hasRestorableBackup(Z)Z
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasBackups()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasApk()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final hasSharedLibs()Z
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsLink:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

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

.method public final hasSpecialData()Z
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->specialDataLink:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

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

.method public final hasSplitApks()Z
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsLink:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

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

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->packageName:Ljava/lang/String;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->name:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dateBackup:Ljava/lang/Long;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dateBackupUpdated:Ljava/lang/Long;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->versionName:Ljava/lang/String;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->versionCode:Ljava/lang/Long;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkLink:Ljava/lang/String;

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
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSize:Ljava/lang/Long;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkBackupDate:Ljava/lang/Long;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSBVersionCodeRequired:Ljava/lang/Long;

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
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSBVersionNameRequired:Ljava/lang/String;

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
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsLink:Ljava/lang/String;

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
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSize:Ljava/lang/Long;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSizeMirrored:Ljava/lang/Long;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSBVersionCodeRequired:Ljava/lang/Long;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSBVersionNameRequired:Ljava/lang/String;

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
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsLink:Ljava/lang/String;

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
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSize:Ljava/lang/Long;

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
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSizeMirrored:Ljava/lang/Long;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSBVersionCodeRequired:Ljava/lang/Long;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSBVersionNameRequired:Ljava/lang/String;

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
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataLink:Ljava/lang/String;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSize:Ljava/lang/Long;

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
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSizeMirrored:Ljava/lang/Long;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isDataEncrypted:Ljava/lang/Boolean;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataEncryptionMethod:Ljava/lang/String;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataPasswordHash:Ljava/lang/String;

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
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataBackupDate:Ljava/lang/Long;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSBVersionCodeRequired:Ljava/lang/Long;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSBVersionNameRequired:Ljava/lang/String;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataLink:Ljava/lang/String;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSize:Ljava/lang/Long;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSizeMirrored:Ljava/lang/Long;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isExtDataEncrypted:Ljava/lang/Boolean;

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
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataEncryptionMethod:Ljava/lang/String;

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
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataPasswordHash:Ljava/lang/String;

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
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataBackupDate:Ljava/lang/Long;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSBVersionCodeRequired:Ljava/lang/Long;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSBVersionNameRequired:Ljava/lang/String;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaLink:Ljava/lang/String;

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
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSize:Ljava/lang/Long;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSizeMirrored:Ljava/lang/Long;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isMediaEncrypted:Ljava/lang/Boolean;

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
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaEncryptionMethod:Ljava/lang/String;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaPasswordHash:Ljava/lang/String;

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
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaBackupDate:Ljava/lang/Long;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSBVersionCodeRequired:Ljava/lang/Long;

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
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSBVersionNameRequired:Ljava/lang/String;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expLink:Ljava/lang/String;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSize:Ljava/lang/Long;

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
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSizeMirrored:Ljava/lang/Long;

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
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expansionBackupDate:Ljava/lang/Long;

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
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSBVersionCodeRequired:Ljava/lang/Long;

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
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSBVersionNameRequired:Ljava/lang/String;

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
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->minSBVersionCodeRequired:Ljava/lang/Long;

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
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->permissionIdsCsv:Ljava/lang/String;

    .line 654
    .line 655
    if-nez v2, :cond_35

    .line 656
    .line 657
    move v2, v3

    .line 658
    goto :goto_35

    .line 659
    :cond_35
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 660
    .line 661
    .line 662
    move-result v2

    .line 663
    :goto_35
    add-int/2addr v0, v2

    .line 664
    mul-int/2addr v0, v1

    .line 665
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->permissionStatesCsv:Ljava/lang/String;

    .line 666
    .line 667
    if-nez v2, :cond_36

    .line 668
    .line 669
    move v2, v3

    .line 670
    goto :goto_36

    .line 671
    :cond_36
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 672
    .line 673
    .line 674
    move-result v2

    .line 675
    :goto_36
    add-int/2addr v0, v2

    .line 676
    mul-int/2addr v0, v1

    .line 677
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->ntfAccessComponent:Ljava/lang/String;

    .line 678
    .line 679
    if-nez v2, :cond_37

    .line 680
    .line 681
    move v2, v3

    .line 682
    goto :goto_37

    .line 683
    :cond_37
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 684
    .line 685
    .line 686
    move-result v2

    .line 687
    :goto_37
    add-int/2addr v0, v2

    .line 688
    mul-int/2addr v0, v1

    .line 689
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->specialDataLink:Ljava/lang/String;

    .line 690
    .line 691
    if-nez v2, :cond_38

    .line 692
    .line 693
    move v2, v3

    .line 694
    goto :goto_38

    .line 695
    :cond_38
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 696
    .line 697
    .line 698
    move-result v2

    .line 699
    :goto_38
    add-int/2addr v0, v2

    .line 700
    mul-int/2addr v0, v1

    .line 701
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->specialDataSize:Ljava/lang/Long;

    .line 702
    .line 703
    if-nez v2, :cond_39

    .line 704
    .line 705
    move v2, v3

    .line 706
    goto :goto_39

    .line 707
    :cond_39
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 708
    .line 709
    .line 710
    move-result v2

    .line 711
    :goto_39
    add-int/2addr v0, v2

    .line 712
    mul-int/2addr v0, v1

    .line 713
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->accessibilityComponent:Ljava/lang/String;

    .line 714
    .line 715
    if-nez v2, :cond_3a

    .line 716
    .line 717
    move v2, v3

    .line 718
    goto :goto_3a

    .line 719
    :cond_3a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 720
    .line 721
    .line 722
    move-result v2

    .line 723
    :goto_3a
    add-int/2addr v0, v2

    .line 724
    mul-int/2addr v0, v1

    .line 725
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->ssaid:Ljava/lang/String;

    .line 726
    .line 727
    if-nez v2, :cond_3b

    .line 728
    .line 729
    move v2, v3

    .line 730
    goto :goto_3b

    .line 731
    :cond_3b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 732
    .line 733
    .line 734
    move-result v2

    .line 735
    :goto_3b
    add-int/2addr v0, v2

    .line 736
    mul-int/2addr v0, v1

    .line 737
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->installerPackage:Ljava/lang/String;

    .line 738
    .line 739
    if-nez v2, :cond_3c

    .line 740
    .line 741
    move v2, v3

    .line 742
    goto :goto_3c

    .line 743
    :cond_3c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 744
    .line 745
    .line 746
    move-result v2

    .line 747
    :goto_3c
    add-int/2addr v0, v2

    .line 748
    mul-int/2addr v0, v1

    .line 749
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->_protectedBackup:Ljava/lang/Boolean;

    .line 750
    .line 751
    if-nez v2, :cond_3d

    .line 752
    .line 753
    move v2, v3

    .line 754
    goto :goto_3d

    .line 755
    :cond_3d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 756
    .line 757
    .line 758
    move-result v2

    .line 759
    :goto_3d
    add-int/2addr v0, v2

    .line 760
    mul-int/2addr v0, v1

    .line 761
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->_note:Ljava/lang/String;

    .line 762
    .line 763
    if-nez v2, :cond_3e

    .line 764
    .line 765
    move v2, v3

    .line 766
    goto :goto_3e

    .line 767
    :cond_3e
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 768
    .line 769
    .line 770
    move-result v2

    .line 771
    :goto_3e
    add-int/2addr v0, v2

    .line 772
    mul-int/2addr v0, v1

    .line 773
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->keyVersion:Ljava/lang/Integer;

    .line 774
    .line 775
    if-nez p0, :cond_3f

    .line 776
    .line 777
    goto :goto_3f

    .line 778
    :cond_3f
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 779
    .line 780
    .line 781
    move-result v3

    .line 782
    :goto_3f
    add-int/2addr v0, v3

    .line 783
    return v0
.end method

.method public final isDataEncrypted()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isDataEncrypted:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isExtDataEncrypted()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isExtDataEncrypted:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isMediaEncrypted()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isMediaEncrypted:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isProtectedBackup()Z
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->_protectedBackup:Ljava/lang/Boolean;

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

.method public final isValidCloudDetails()Z
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasBackups()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lg00;->a:Lg00;

    .line 8
    .line 9
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->packageName:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p0}, Lg00;->w(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public final prepareForFirebaseUpload()V
    .locals 3
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    const-wide/16 v0, 0x244

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasBackups()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v2

    .line 16
    :goto_0
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->minSBVersionCodeRequired:Ljava/lang/Long;

    .line 17
    .line 18
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->permissionIdsCsv:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->permissionStatesCsv:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->ntfAccessComponent:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->accessibilityComponent:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->ssaid:Ljava/lang/String;

    .line 27
    .line 28
    invoke-direct {p0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->clearLegacyPerPartSBVersionFields()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final removeApkDetails()V
    .locals 6
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    const/4 v4, 0x0

    .line 2
    const/4 v5, 0x0

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    move-object v0, p0

    .line 7
    invoke-virtual/range {v0 .. v5}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->updateApkDetails(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    iput-object p0, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSBVersionCodeRequired:Ljava/lang/Long;

    .line 12
    .line 13
    iput-object p0, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSBVersionNameRequired:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method public final removeDataDetails()V
    .locals 8
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    const/4 v6, 0x0

    .line 2
    const/4 v7, 0x0

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    move-object v0, p0

    .line 9
    invoke-virtual/range {v0 .. v7}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->updateDataDetails(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    iput-object p0, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSBVersionCodeRequired:Ljava/lang/Long;

    .line 14
    .line 15
    iput-object p0, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSBVersionNameRequired:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public final removeExpansionDetails()V
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0, v0, v0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->updateExpansionDetails(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 3
    .line 4
    .line 5
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSBVersionCodeRequired:Ljava/lang/Long;

    .line 6
    .line 7
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSBVersionNameRequired:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public final removeExtDataDetails()V
    .locals 8
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    const/4 v6, 0x0

    .line 2
    const/4 v7, 0x0

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    move-object v0, p0

    .line 9
    invoke-virtual/range {v0 .. v7}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->updateExtDataDetails(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    iput-object p0, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSBVersionCodeRequired:Ljava/lang/Long;

    .line 14
    .line 15
    iput-object p0, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSBVersionNameRequired:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public final removeMediaDetails()V
    .locals 8
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    const/4 v6, 0x0

    .line 2
    const/4 v7, 0x0

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    move-object v0, p0

    .line 9
    invoke-virtual/range {v0 .. v7}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->updateMediaDetails(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    iput-object p0, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSBVersionCodeRequired:Ljava/lang/Long;

    .line 14
    .line 15
    iput-object p0, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSBVersionNameRequired:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public final removeSharedLibsDetails()V
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0, v0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->updateSharedLibsDetails(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 3
    .line 4
    .line 5
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSBVersionCodeRequired:Ljava/lang/Long;

    .line 6
    .line 7
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSBVersionNameRequired:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public final removeSpecialDataDetails()V
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->updateSpecialDataDetails(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final removeSplitsDetails()V
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0, v0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->updateSplitsDetails(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 3
    .line 4
    .line 5
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSBVersionCodeRequired:Ljava/lang/Long;

    .line 6
    .line 7
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSBVersionNameRequired:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public final setAccessibilityComponent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->accessibilityComponent:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setApkBackupDate(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkBackupDate:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setApkLink(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkLink:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setApkSBVersionCodeRequired(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setApkSBVersionNameRequired(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setApkSize(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setDataBackupDate(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataBackupDate:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setDataEncrypted(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isDataEncrypted:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setDataEncryptionMethod(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataEncryptionMethod:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDataLink(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataLink:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDataPasswordHash(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataPasswordHash:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDataSBVersionCodeRequired(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setDataSBVersionNameRequired(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDataSize(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setDataSizeMirrored(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSizeMirrored:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setDateBackup(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dateBackup:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setDateBackupUpdated(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dateBackupUpdated:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setExpLink(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expLink:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setExpSBVersionCodeRequired(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setExpSBVersionNameRequired(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setExpSize(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setExpSizeMirrored(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSizeMirrored:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setExpansionBackupDate(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expansionBackupDate:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setExtDataBackupDate(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataBackupDate:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setExtDataEncrypted(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isExtDataEncrypted:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setExtDataEncryptionMethod(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataEncryptionMethod:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setExtDataLink(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataLink:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setExtDataPasswordHash(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataPasswordHash:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setExtDataSBVersionCodeRequired(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setExtDataSBVersionNameRequired(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setExtDataSize(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setExtDataSizeMirrored(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSizeMirrored:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setInstallerPackage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->installerPackage:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setKeyVersion(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->keyVersion:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setMediaBackupDate(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaBackupDate:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setMediaEncrypted(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isMediaEncrypted:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setMediaEncryptionMethod(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaEncryptionMethod:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMediaLink(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaLink:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMediaPasswordHash(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaPasswordHash:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMediaSBVersionCodeRequired(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setMediaSBVersionNameRequired(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMediaSize(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setMediaSizeMirrored(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSizeMirrored:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setMinSBVersionCodeRequired(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->minSBVersionCodeRequired:Ljava/lang/Long;

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
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->name:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public final setNtfAccessComponent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->ntfAccessComponent:Ljava/lang/String;

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
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->packageName:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public final setPermissionIdsCsv(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->permissionIdsCsv:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPermissionStatesCsv(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->permissionStatesCsv:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSharedLibsLink(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsLink:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSharedLibsSBVersionCodeRequired(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setSharedLibsSBVersionNameRequired(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSharedLibsSize(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setSharedLibsSizeMirrored(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSizeMirrored:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setSpecialDataLink(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->specialDataLink:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSpecialDataSize(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->specialDataSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setSplitsLink(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsLink:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSplitsSBVersionCodeRequired(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSBVersionCodeRequired:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setSplitsSBVersionNameRequired(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSBVersionNameRequired:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSplitsSize(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setSplitsSizeMirrored(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSizeMirrored:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setSsaid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->ssaid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setVersionCode(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->versionCode:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setVersionName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->versionName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final set_note(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->_note:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final set_protectedBackup(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->_protectedBackup:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 68

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->packageName:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->name:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dateBackup:Ljava/lang/Long;

    .line 8
    .line 9
    iget-object v4, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dateBackupUpdated:Ljava/lang/Long;

    .line 10
    .line 11
    iget-object v5, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->versionName:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->versionCode:Ljava/lang/Long;

    .line 14
    .line 15
    iget-object v7, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkLink:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v8, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSize:Ljava/lang/Long;

    .line 18
    .line 19
    iget-object v9, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkBackupDate:Ljava/lang/Long;

    .line 20
    .line 21
    iget-object v10, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSBVersionCodeRequired:Ljava/lang/Long;

    .line 22
    .line 23
    iget-object v11, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSBVersionNameRequired:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v12, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsLink:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v13, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSize:Ljava/lang/Long;

    .line 28
    .line 29
    iget-object v14, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSizeMirrored:Ljava/lang/Long;

    .line 30
    .line 31
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSBVersionCodeRequired:Ljava/lang/Long;

    .line 32
    .line 33
    move-object/from16 v16, v15

    .line 34
    .line 35
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSBVersionNameRequired:Ljava/lang/String;

    .line 36
    .line 37
    move-object/from16 v17, v15

    .line 38
    .line 39
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsLink:Ljava/lang/String;

    .line 40
    .line 41
    move-object/from16 v18, v15

    .line 42
    .line 43
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSize:Ljava/lang/Long;

    .line 44
    .line 45
    move-object/from16 v19, v15

    .line 46
    .line 47
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSizeMirrored:Ljava/lang/Long;

    .line 48
    .line 49
    move-object/from16 v20, v15

    .line 50
    .line 51
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSBVersionCodeRequired:Ljava/lang/Long;

    .line 52
    .line 53
    move-object/from16 v21, v15

    .line 54
    .line 55
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSBVersionNameRequired:Ljava/lang/String;

    .line 56
    .line 57
    move-object/from16 v22, v15

    .line 58
    .line 59
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataLink:Ljava/lang/String;

    .line 60
    .line 61
    move-object/from16 v23, v15

    .line 62
    .line 63
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSize:Ljava/lang/Long;

    .line 64
    .line 65
    move-object/from16 v24, v15

    .line 66
    .line 67
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSizeMirrored:Ljava/lang/Long;

    .line 68
    .line 69
    move-object/from16 v25, v15

    .line 70
    .line 71
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isDataEncrypted:Ljava/lang/Boolean;

    .line 72
    .line 73
    move-object/from16 v26, v15

    .line 74
    .line 75
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataEncryptionMethod:Ljava/lang/String;

    .line 76
    .line 77
    move-object/from16 v27, v15

    .line 78
    .line 79
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataPasswordHash:Ljava/lang/String;

    .line 80
    .line 81
    move-object/from16 v28, v15

    .line 82
    .line 83
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataBackupDate:Ljava/lang/Long;

    .line 84
    .line 85
    move-object/from16 v29, v15

    .line 86
    .line 87
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSBVersionCodeRequired:Ljava/lang/Long;

    .line 88
    .line 89
    move-object/from16 v30, v15

    .line 90
    .line 91
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSBVersionNameRequired:Ljava/lang/String;

    .line 92
    .line 93
    move-object/from16 v31, v15

    .line 94
    .line 95
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataLink:Ljava/lang/String;

    .line 96
    .line 97
    move-object/from16 v32, v15

    .line 98
    .line 99
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSize:Ljava/lang/Long;

    .line 100
    .line 101
    move-object/from16 v33, v15

    .line 102
    .line 103
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSizeMirrored:Ljava/lang/Long;

    .line 104
    .line 105
    move-object/from16 v34, v15

    .line 106
    .line 107
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isExtDataEncrypted:Ljava/lang/Boolean;

    .line 108
    .line 109
    move-object/from16 v35, v15

    .line 110
    .line 111
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataEncryptionMethod:Ljava/lang/String;

    .line 112
    .line 113
    move-object/from16 v36, v15

    .line 114
    .line 115
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataPasswordHash:Ljava/lang/String;

    .line 116
    .line 117
    move-object/from16 v37, v15

    .line 118
    .line 119
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataBackupDate:Ljava/lang/Long;

    .line 120
    .line 121
    move-object/from16 v38, v15

    .line 122
    .line 123
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSBVersionCodeRequired:Ljava/lang/Long;

    .line 124
    .line 125
    move-object/from16 v39, v15

    .line 126
    .line 127
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSBVersionNameRequired:Ljava/lang/String;

    .line 128
    .line 129
    move-object/from16 v40, v15

    .line 130
    .line 131
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaLink:Ljava/lang/String;

    .line 132
    .line 133
    move-object/from16 v41, v15

    .line 134
    .line 135
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSize:Ljava/lang/Long;

    .line 136
    .line 137
    move-object/from16 v42, v15

    .line 138
    .line 139
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSizeMirrored:Ljava/lang/Long;

    .line 140
    .line 141
    move-object/from16 v43, v15

    .line 142
    .line 143
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isMediaEncrypted:Ljava/lang/Boolean;

    .line 144
    .line 145
    move-object/from16 v44, v15

    .line 146
    .line 147
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaEncryptionMethod:Ljava/lang/String;

    .line 148
    .line 149
    move-object/from16 v45, v15

    .line 150
    .line 151
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaPasswordHash:Ljava/lang/String;

    .line 152
    .line 153
    move-object/from16 v46, v15

    .line 154
    .line 155
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaBackupDate:Ljava/lang/Long;

    .line 156
    .line 157
    move-object/from16 v47, v15

    .line 158
    .line 159
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSBVersionCodeRequired:Ljava/lang/Long;

    .line 160
    .line 161
    move-object/from16 v48, v15

    .line 162
    .line 163
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSBVersionNameRequired:Ljava/lang/String;

    .line 164
    .line 165
    move-object/from16 v49, v15

    .line 166
    .line 167
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expLink:Ljava/lang/String;

    .line 168
    .line 169
    move-object/from16 v50, v15

    .line 170
    .line 171
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSize:Ljava/lang/Long;

    .line 172
    .line 173
    move-object/from16 v51, v15

    .line 174
    .line 175
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSizeMirrored:Ljava/lang/Long;

    .line 176
    .line 177
    move-object/from16 v52, v15

    .line 178
    .line 179
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expansionBackupDate:Ljava/lang/Long;

    .line 180
    .line 181
    move-object/from16 v53, v15

    .line 182
    .line 183
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSBVersionCodeRequired:Ljava/lang/Long;

    .line 184
    .line 185
    move-object/from16 v54, v15

    .line 186
    .line 187
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSBVersionNameRequired:Ljava/lang/String;

    .line 188
    .line 189
    move-object/from16 v55, v15

    .line 190
    .line 191
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->minSBVersionCodeRequired:Ljava/lang/Long;

    .line 192
    .line 193
    move-object/from16 v56, v15

    .line 194
    .line 195
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->permissionIdsCsv:Ljava/lang/String;

    .line 196
    .line 197
    move-object/from16 v57, v15

    .line 198
    .line 199
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->permissionStatesCsv:Ljava/lang/String;

    .line 200
    .line 201
    move-object/from16 v58, v15

    .line 202
    .line 203
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->ntfAccessComponent:Ljava/lang/String;

    .line 204
    .line 205
    move-object/from16 v59, v15

    .line 206
    .line 207
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->specialDataLink:Ljava/lang/String;

    .line 208
    .line 209
    move-object/from16 v60, v15

    .line 210
    .line 211
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->specialDataSize:Ljava/lang/Long;

    .line 212
    .line 213
    move-object/from16 v61, v15

    .line 214
    .line 215
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->accessibilityComponent:Ljava/lang/String;

    .line 216
    .line 217
    move-object/from16 v62, v15

    .line 218
    .line 219
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->ssaid:Ljava/lang/String;

    .line 220
    .line 221
    move-object/from16 v63, v15

    .line 222
    .line 223
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->installerPackage:Ljava/lang/String;

    .line 224
    .line 225
    move-object/from16 v64, v15

    .line 226
    .line 227
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->_protectedBackup:Ljava/lang/Boolean;

    .line 228
    .line 229
    move-object/from16 v65, v15

    .line 230
    .line 231
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->_note:Ljava/lang/String;

    .line 232
    .line 233
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->keyVersion:Ljava/lang/Integer;

    .line 234
    .line 235
    move-object/from16 p0, v0

    .line 236
    .line 237
    const-string v0, ", name="

    .line 238
    .line 239
    move-object/from16 v66, v15

    .line 240
    .line 241
    const-string v15, ", dateBackup="

    .line 242
    .line 243
    move-object/from16 v67, v13

    .line 244
    .line 245
    const-string v13, "CloudMetadata(packageName="

    .line 246
    .line 247
    invoke-static {v13, v1, v0, v2, v15}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    const-string v1, ", dateBackupUpdated="

    .line 252
    .line 253
    const-string v2, ", versionName="

    .line 254
    .line 255
    invoke-static {v0, v3, v1, v4, v2}, Lfz5;->q(Ljava/lang/StringBuilder;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    const-string v1, ", versionCode="

    .line 262
    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    const-string v1, ", apkLink="

    .line 270
    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    const-string v1, ", apkSize="

    .line 278
    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const-string v1, ", apkBackupDate="

    .line 286
    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    const-string v1, ", apkSBVersionCodeRequired="

    .line 291
    .line 292
    const-string v2, ", apkSBVersionNameRequired="

    .line 293
    .line 294
    invoke-static {v0, v9, v1, v10, v2}, Lfz5;->q(Ljava/lang/StringBuilder;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    const-string v1, ", splitsLink="

    .line 298
    .line 299
    const-string v2, ", splitsSize="

    .line 300
    .line 301
    invoke-static {v0, v11, v1, v12, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    const-string v1, ", splitsSizeMirrored="

    .line 305
    .line 306
    const-string v2, ", splitsSBVersionCodeRequired="

    .line 307
    .line 308
    move-object/from16 v3, v67

    .line 309
    .line 310
    invoke-static {v0, v3, v1, v14, v2}, Lfz5;->q(Ljava/lang/StringBuilder;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    move-object/from16 v1, v16

    .line 314
    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    const-string v1, ", splitsSBVersionNameRequired="

    .line 319
    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    move-object/from16 v1, v17

    .line 324
    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string v1, ", sharedLibsLink="

    .line 329
    .line 330
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    move-object/from16 v1, v18

    .line 334
    .line 335
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    const-string v1, ", sharedLibsSize="

    .line 339
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    move-object/from16 v1, v19

    .line 344
    .line 345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    const-string v1, ", sharedLibsSizeMirrored="

    .line 349
    .line 350
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    const-string v1, ", sharedLibsSBVersionCodeRequired="

    .line 354
    .line 355
    const-string v2, ", sharedLibsSBVersionNameRequired="

    .line 356
    .line 357
    move-object/from16 v3, v20

    .line 358
    .line 359
    move-object/from16 v4, v21

    .line 360
    .line 361
    invoke-static {v0, v3, v1, v4, v2}, Lfz5;->q(Ljava/lang/StringBuilder;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    const-string v1, ", dataLink="

    .line 365
    .line 366
    const-string v2, ", dataSize="

    .line 367
    .line 368
    move-object/from16 v3, v22

    .line 369
    .line 370
    move-object/from16 v4, v23

    .line 371
    .line 372
    invoke-static {v0, v3, v1, v4, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    const-string v1, ", dataSizeMirrored="

    .line 376
    .line 377
    const-string v2, ", isDataEncrypted="

    .line 378
    .line 379
    move-object/from16 v3, v24

    .line 380
    .line 381
    move-object/from16 v4, v25

    .line 382
    .line 383
    invoke-static {v0, v3, v1, v4, v2}, Lfz5;->q(Ljava/lang/StringBuilder;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    move-object/from16 v1, v26

    .line 387
    .line 388
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    const-string v1, ", dataEncryptionMethod="

    .line 392
    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    move-object/from16 v1, v27

    .line 397
    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    const-string v1, ", dataPasswordHash="

    .line 402
    .line 403
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    move-object/from16 v1, v28

    .line 407
    .line 408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    const-string v1, ", dataBackupDate="

    .line 412
    .line 413
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    move-object/from16 v1, v29

    .line 417
    .line 418
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    const-string v1, ", dataSBVersionCodeRequired="

    .line 422
    .line 423
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    move-object/from16 v1, v30

    .line 427
    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    const-string v1, ", dataSBVersionNameRequired="

    .line 432
    .line 433
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    move-object/from16 v1, v31

    .line 437
    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    const-string v1, ", extDataLink="

    .line 442
    .line 443
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    move-object/from16 v1, v32

    .line 447
    .line 448
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    const-string v1, ", extDataSize="

    .line 452
    .line 453
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    move-object/from16 v1, v33

    .line 457
    .line 458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    const-string v1, ", extDataSizeMirrored="

    .line 462
    .line 463
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    move-object/from16 v1, v34

    .line 467
    .line 468
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    const-string v1, ", isExtDataEncrypted="

    .line 472
    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    move-object/from16 v1, v35

    .line 477
    .line 478
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    const-string v1, ", extDataEncryptionMethod="

    .line 482
    .line 483
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    const-string v1, ", extDataPasswordHash="

    .line 487
    .line 488
    const-string v2, ", extDataBackupDate="

    .line 489
    .line 490
    move-object/from16 v3, v36

    .line 491
    .line 492
    move-object/from16 v4, v37

    .line 493
    .line 494
    invoke-static {v0, v3, v1, v4, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    const-string v1, ", extDataSBVersionCodeRequired="

    .line 498
    .line 499
    const-string v2, ", extDataSBVersionNameRequired="

    .line 500
    .line 501
    move-object/from16 v3, v38

    .line 502
    .line 503
    move-object/from16 v4, v39

    .line 504
    .line 505
    invoke-static {v0, v3, v1, v4, v2}, Lfz5;->q(Ljava/lang/StringBuilder;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    const-string v1, ", mediaLink="

    .line 509
    .line 510
    const-string v2, ", mediaSize="

    .line 511
    .line 512
    move-object/from16 v3, v40

    .line 513
    .line 514
    move-object/from16 v4, v41

    .line 515
    .line 516
    invoke-static {v0, v3, v1, v4, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    const-string v1, ", mediaSizeMirrored="

    .line 520
    .line 521
    const-string v2, ", isMediaEncrypted="

    .line 522
    .line 523
    move-object/from16 v3, v42

    .line 524
    .line 525
    move-object/from16 v4, v43

    .line 526
    .line 527
    invoke-static {v0, v3, v1, v4, v2}, Lfz5;->q(Ljava/lang/StringBuilder;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    move-object/from16 v1, v44

    .line 531
    .line 532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    const-string v1, ", mediaEncryptionMethod="

    .line 536
    .line 537
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    move-object/from16 v1, v45

    .line 541
    .line 542
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    const-string v1, ", mediaPasswordHash="

    .line 546
    .line 547
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    move-object/from16 v1, v46

    .line 551
    .line 552
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    const-string v1, ", mediaBackupDate="

    .line 556
    .line 557
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    move-object/from16 v1, v47

    .line 561
    .line 562
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    const-string v1, ", mediaSBVersionCodeRequired="

    .line 566
    .line 567
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    move-object/from16 v1, v48

    .line 571
    .line 572
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    const-string v1, ", mediaSBVersionNameRequired="

    .line 576
    .line 577
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    move-object/from16 v1, v49

    .line 581
    .line 582
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    const-string v1, ", expLink="

    .line 586
    .line 587
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    move-object/from16 v1, v50

    .line 591
    .line 592
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    const-string v1, ", expSize="

    .line 596
    .line 597
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    move-object/from16 v1, v51

    .line 601
    .line 602
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    const-string v1, ", expSizeMirrored="

    .line 606
    .line 607
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    .line 609
    .line 610
    const-string v1, ", expansionBackupDate="

    .line 611
    .line 612
    const-string v2, ", expSBVersionCodeRequired="

    .line 613
    .line 614
    move-object/from16 v3, v52

    .line 615
    .line 616
    move-object/from16 v4, v53

    .line 617
    .line 618
    invoke-static {v0, v3, v1, v4, v2}, Lfz5;->q(Ljava/lang/StringBuilder;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    move-object/from16 v1, v54

    .line 622
    .line 623
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    const-string v1, ", expSBVersionNameRequired="

    .line 627
    .line 628
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    move-object/from16 v1, v55

    .line 632
    .line 633
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    const-string v1, ", minSBVersionCodeRequired="

    .line 637
    .line 638
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    move-object/from16 v1, v56

    .line 642
    .line 643
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 644
    .line 645
    .line 646
    const-string v1, ", permissionIdsCsv="

    .line 647
    .line 648
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    .line 650
    .line 651
    move-object/from16 v1, v57

    .line 652
    .line 653
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    const-string v1, ", permissionStatesCsv="

    .line 657
    .line 658
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    const-string v1, ", ntfAccessComponent="

    .line 662
    .line 663
    const-string v2, ", specialDataLink="

    .line 664
    .line 665
    move-object/from16 v3, v58

    .line 666
    .line 667
    move-object/from16 v4, v59

    .line 668
    .line 669
    invoke-static {v0, v3, v1, v4, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    .line 671
    .line 672
    move-object/from16 v1, v60

    .line 673
    .line 674
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    .line 676
    .line 677
    const-string v1, ", specialDataSize="

    .line 678
    .line 679
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    .line 681
    .line 682
    move-object/from16 v1, v61

    .line 683
    .line 684
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 685
    .line 686
    .line 687
    const-string v1, ", accessibilityComponent="

    .line 688
    .line 689
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    .line 691
    .line 692
    const-string v1, ", ssaid="

    .line 693
    .line 694
    const-string v2, ", installerPackage="

    .line 695
    .line 696
    move-object/from16 v3, v62

    .line 697
    .line 698
    move-object/from16 v4, v63

    .line 699
    .line 700
    invoke-static {v0, v3, v1, v4, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    .line 702
    .line 703
    move-object/from16 v1, v64

    .line 704
    .line 705
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    const-string v1, ", _protectedBackup="

    .line 709
    .line 710
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    .line 712
    .line 713
    move-object/from16 v1, v65

    .line 714
    .line 715
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 716
    .line 717
    .line 718
    const-string v1, ", _note="

    .line 719
    .line 720
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    .line 722
    .line 723
    move-object/from16 v1, v66

    .line 724
    .line 725
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    .line 727
    .line 728
    const-string v1, ", keyVersion="

    .line 729
    .line 730
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    .line 732
    .line 733
    move-object/from16 v1, p0

    .line 734
    .line 735
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 736
    .line 737
    .line 738
    const-string v1, ")"

    .line 739
    .line 740
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    .line 742
    .line 743
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 744
    .line 745
    .line 746
    move-result-object v0

    .line 747
    return-object v0
.end method

.method public final updateApkDetails(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->versionName:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->versionCode:Ljava/lang/Long;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkLink:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSize:Ljava/lang/Long;

    .line 8
    .line 9
    iput-object p5, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkBackupDate:Ljava/lang/Long;

    .line 10
    .line 11
    const-wide/16 p1, 0x244

    .line 12
    .line 13
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSBVersionCodeRequired:Ljava/lang/Long;

    .line 18
    .line 19
    const-string p1, "v5.0.0"

    .line 20
    .line 21
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSBVersionNameRequired:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method

.method public final updateDataDetails(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataLink:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSize:Ljava/lang/Long;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSizeMirrored:Ljava/lang/Long;

    .line 6
    .line 7
    iput-object p4, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isDataEncrypted:Ljava/lang/Boolean;

    .line 8
    .line 9
    iput-object p5, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataEncryptionMethod:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataPasswordHash:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataBackupDate:Ljava/lang/Long;

    .line 14
    .line 15
    const-wide/16 p1, 0x244

    .line 16
    .line 17
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSBVersionCodeRequired:Ljava/lang/Long;

    .line 22
    .line 23
    const-string p1, "v5.0.0"

    .line 24
    .line 25
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSBVersionNameRequired:Ljava/lang/String;

    .line 26
    .line 27
    return-void
.end method

.method public final updateExpansionDetails(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expLink:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSize:Ljava/lang/Long;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSizeMirrored:Ljava/lang/Long;

    .line 6
    .line 7
    iput-object p4, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expansionBackupDate:Ljava/lang/Long;

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
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSBVersionCodeRequired:Ljava/lang/Long;

    .line 16
    .line 17
    const-string p1, "v5.0.0"

    .line 18
    .line 19
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSBVersionNameRequired:Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method

.method public final updateExtDataDetails(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataLink:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSize:Ljava/lang/Long;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSizeMirrored:Ljava/lang/Long;

    .line 6
    .line 7
    iput-object p4, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isExtDataEncrypted:Ljava/lang/Boolean;

    .line 8
    .line 9
    iput-object p5, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataEncryptionMethod:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataPasswordHash:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataBackupDate:Ljava/lang/Long;

    .line 14
    .line 15
    const-wide/16 p1, 0x244

    .line 16
    .line 17
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSBVersionCodeRequired:Ljava/lang/Long;

    .line 22
    .line 23
    const-string p1, "v5.0.0"

    .line 24
    .line 25
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSBVersionNameRequired:Ljava/lang/String;

    .line 26
    .line 27
    return-void
.end method

.method public final updateMediaDetails(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaLink:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSize:Ljava/lang/Long;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSizeMirrored:Ljava/lang/Long;

    .line 6
    .line 7
    iput-object p4, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isMediaEncrypted:Ljava/lang/Boolean;

    .line 8
    .line 9
    iput-object p5, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaEncryptionMethod:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaPasswordHash:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaBackupDate:Ljava/lang/Long;

    .line 14
    .line 15
    const-wide/16 p1, 0x244

    .line 16
    .line 17
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSBVersionCodeRequired:Ljava/lang/Long;

    .line 22
    .line 23
    const-string p1, "v5.0.0"

    .line 24
    .line 25
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSBVersionNameRequired:Ljava/lang/String;

    .line 26
    .line 27
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
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->_note:Ljava/lang/String;

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
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->_protectedBackup:Ljava/lang/Boolean;

    .line 10
    .line 11
    return-void
.end method

.method public final updateSharedLibsDetails(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsLink:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSize:Ljava/lang/Long;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSizeMirrored:Ljava/lang/Long;

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
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSBVersionCodeRequired:Ljava/lang/Long;

    .line 14
    .line 15
    const-string p1, "v5.0.0"

    .line 16
    .line 17
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSBVersionNameRequired:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method public final updateSpecialDataDetails(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->specialDataLink:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->specialDataSize:Ljava/lang/Long;

    .line 4
    .line 5
    return-void
.end method

.method public final updateSplitsDetails(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsLink:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSize:Ljava/lang/Long;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSizeMirrored:Ljava/lang/Long;

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
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSBVersionCodeRequired:Ljava/lang/Long;

    .line 14
    .line 15
    const-string p1, "v5.0.0"

    .line 16
    .line 17
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSBVersionNameRequired:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->packageName:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->name:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dateBackup:Ljava/lang/Long;

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
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dateBackupUpdated:Ljava/lang/Long;

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
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->versionName:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->versionCode:Ljava/lang/Long;

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
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkLink:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSize:Ljava/lang/Long;

    .line 60
    .line 61
    if-nez p2, :cond_3

    .line 62
    .line 63
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_3
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 68
    .line 69
    .line 70
    :goto_3
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkBackupDate:Ljava/lang/Long;

    .line 71
    .line 72
    if-nez p2, :cond_4

    .line 73
    .line 74
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_4
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 79
    .line 80
    .line 81
    :goto_4
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSBVersionCodeRequired:Ljava/lang/Long;

    .line 82
    .line 83
    if-nez p2, :cond_5

    .line 84
    .line 85
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    .line 87
    .line 88
    goto :goto_5

    .line 89
    :cond_5
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 90
    .line 91
    .line 92
    :goto_5
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->apkSBVersionNameRequired:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsLink:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSize:Ljava/lang/Long;

    .line 103
    .line 104
    if-nez p2, :cond_6

    .line 105
    .line 106
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    .line 108
    .line 109
    goto :goto_6

    .line 110
    :cond_6
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 111
    .line 112
    .line 113
    :goto_6
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSizeMirrored:Ljava/lang/Long;

    .line 114
    .line 115
    if-nez p2, :cond_7

    .line 116
    .line 117
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    .line 119
    .line 120
    goto :goto_7

    .line 121
    :cond_7
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 122
    .line 123
    .line 124
    :goto_7
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSBVersionCodeRequired:Ljava/lang/Long;

    .line 125
    .line 126
    if-nez p2, :cond_8

    .line 127
    .line 128
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    .line 130
    .line 131
    goto :goto_8

    .line 132
    :cond_8
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 133
    .line 134
    .line 135
    :goto_8
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->splitsSBVersionNameRequired:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsLink:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSize:Ljava/lang/Long;

    .line 146
    .line 147
    if-nez p2, :cond_9

    .line 148
    .line 149
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    .line 151
    .line 152
    goto :goto_9

    .line 153
    :cond_9
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 154
    .line 155
    .line 156
    :goto_9
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSizeMirrored:Ljava/lang/Long;

    .line 157
    .line 158
    if-nez p2, :cond_a

    .line 159
    .line 160
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    .line 162
    .line 163
    goto :goto_a

    .line 164
    :cond_a
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 165
    .line 166
    .line 167
    :goto_a
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSBVersionCodeRequired:Ljava/lang/Long;

    .line 168
    .line 169
    if-nez p2, :cond_b

    .line 170
    .line 171
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    .line 173
    .line 174
    goto :goto_b

    .line 175
    :cond_b
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 176
    .line 177
    .line 178
    :goto_b
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->sharedLibsSBVersionNameRequired:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataLink:Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSize:Ljava/lang/Long;

    .line 189
    .line 190
    if-nez p2, :cond_c

    .line 191
    .line 192
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    .line 194
    .line 195
    goto :goto_c

    .line 196
    :cond_c
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 197
    .line 198
    .line 199
    :goto_c
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSizeMirrored:Ljava/lang/Long;

    .line 200
    .line 201
    if-nez p2, :cond_d

    .line 202
    .line 203
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    .line 205
    .line 206
    goto :goto_d

    .line 207
    :cond_d
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 208
    .line 209
    .line 210
    :goto_d
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isDataEncrypted:Ljava/lang/Boolean;

    .line 211
    .line 212
    if-nez p2, :cond_e

    .line 213
    .line 214
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    .line 216
    .line 217
    goto :goto_e

    .line 218
    :cond_e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 222
    .line 223
    .line 224
    move-result p2

    .line 225
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    .line 227
    .line 228
    :goto_e
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataEncryptionMethod:Ljava/lang/String;

    .line 229
    .line 230
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataPasswordHash:Ljava/lang/String;

    .line 234
    .line 235
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataBackupDate:Ljava/lang/Long;

    .line 239
    .line 240
    if-nez p2, :cond_f

    .line 241
    .line 242
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    .line 244
    .line 245
    goto :goto_f

    .line 246
    :cond_f
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 247
    .line 248
    .line 249
    :goto_f
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSBVersionCodeRequired:Ljava/lang/Long;

    .line 250
    .line 251
    if-nez p2, :cond_10

    .line 252
    .line 253
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    .line 255
    .line 256
    goto :goto_10

    .line 257
    :cond_10
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 258
    .line 259
    .line 260
    :goto_10
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->dataSBVersionNameRequired:Ljava/lang/String;

    .line 261
    .line 262
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataLink:Ljava/lang/String;

    .line 266
    .line 267
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSize:Ljava/lang/Long;

    .line 271
    .line 272
    if-nez p2, :cond_11

    .line 273
    .line 274
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    .line 276
    .line 277
    goto :goto_11

    .line 278
    :cond_11
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 279
    .line 280
    .line 281
    :goto_11
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSizeMirrored:Ljava/lang/Long;

    .line 282
    .line 283
    if-nez p2, :cond_12

    .line 284
    .line 285
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    .line 287
    .line 288
    goto :goto_12

    .line 289
    :cond_12
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 290
    .line 291
    .line 292
    :goto_12
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isExtDataEncrypted:Ljava/lang/Boolean;

    .line 293
    .line 294
    if-nez p2, :cond_13

    .line 295
    .line 296
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    .line 298
    .line 299
    goto :goto_13

    .line 300
    :cond_13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 304
    .line 305
    .line 306
    move-result p2

    .line 307
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    .line 309
    .line 310
    :goto_13
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataEncryptionMethod:Ljava/lang/String;

    .line 311
    .line 312
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataPasswordHash:Ljava/lang/String;

    .line 316
    .line 317
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataBackupDate:Ljava/lang/Long;

    .line 321
    .line 322
    if-nez p2, :cond_14

    .line 323
    .line 324
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    .line 326
    .line 327
    goto :goto_14

    .line 328
    :cond_14
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 329
    .line 330
    .line 331
    :goto_14
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSBVersionCodeRequired:Ljava/lang/Long;

    .line 332
    .line 333
    if-nez p2, :cond_15

    .line 334
    .line 335
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    .line 337
    .line 338
    goto :goto_15

    .line 339
    :cond_15
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 340
    .line 341
    .line 342
    :goto_15
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->extDataSBVersionNameRequired:Ljava/lang/String;

    .line 343
    .line 344
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaLink:Ljava/lang/String;

    .line 348
    .line 349
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSize:Ljava/lang/Long;

    .line 353
    .line 354
    if-nez p2, :cond_16

    .line 355
    .line 356
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    .line 358
    .line 359
    goto :goto_16

    .line 360
    :cond_16
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 361
    .line 362
    .line 363
    :goto_16
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSizeMirrored:Ljava/lang/Long;

    .line 364
    .line 365
    if-nez p2, :cond_17

    .line 366
    .line 367
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    .line 369
    .line 370
    goto :goto_17

    .line 371
    :cond_17
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 372
    .line 373
    .line 374
    :goto_17
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isMediaEncrypted:Ljava/lang/Boolean;

    .line 375
    .line 376
    if-nez p2, :cond_18

    .line 377
    .line 378
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    .line 380
    .line 381
    goto :goto_18

    .line 382
    :cond_18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 386
    .line 387
    .line 388
    move-result p2

    .line 389
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    .line 391
    .line 392
    :goto_18
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaEncryptionMethod:Ljava/lang/String;

    .line 393
    .line 394
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaPasswordHash:Ljava/lang/String;

    .line 398
    .line 399
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaBackupDate:Ljava/lang/Long;

    .line 403
    .line 404
    if-nez p2, :cond_19

    .line 405
    .line 406
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    .line 408
    .line 409
    goto :goto_19

    .line 410
    :cond_19
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 411
    .line 412
    .line 413
    :goto_19
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSBVersionCodeRequired:Ljava/lang/Long;

    .line 414
    .line 415
    if-nez p2, :cond_1a

    .line 416
    .line 417
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    .line 419
    .line 420
    goto :goto_1a

    .line 421
    :cond_1a
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 422
    .line 423
    .line 424
    :goto_1a
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->mediaSBVersionNameRequired:Ljava/lang/String;

    .line 425
    .line 426
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expLink:Ljava/lang/String;

    .line 430
    .line 431
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSize:Ljava/lang/Long;

    .line 435
    .line 436
    if-nez p2, :cond_1b

    .line 437
    .line 438
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    .line 440
    .line 441
    goto :goto_1b

    .line 442
    :cond_1b
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 443
    .line 444
    .line 445
    :goto_1b
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSizeMirrored:Ljava/lang/Long;

    .line 446
    .line 447
    if-nez p2, :cond_1c

    .line 448
    .line 449
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 450
    .line 451
    .line 452
    goto :goto_1c

    .line 453
    :cond_1c
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 454
    .line 455
    .line 456
    :goto_1c
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expansionBackupDate:Ljava/lang/Long;

    .line 457
    .line 458
    if-nez p2, :cond_1d

    .line 459
    .line 460
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    .line 462
    .line 463
    goto :goto_1d

    .line 464
    :cond_1d
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 465
    .line 466
    .line 467
    :goto_1d
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSBVersionCodeRequired:Ljava/lang/Long;

    .line 468
    .line 469
    if-nez p2, :cond_1e

    .line 470
    .line 471
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 472
    .line 473
    .line 474
    goto :goto_1e

    .line 475
    :cond_1e
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 476
    .line 477
    .line 478
    :goto_1e
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->expSBVersionNameRequired:Ljava/lang/String;

    .line 479
    .line 480
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->minSBVersionCodeRequired:Ljava/lang/Long;

    .line 484
    .line 485
    if-nez p2, :cond_1f

    .line 486
    .line 487
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    .line 489
    .line 490
    goto :goto_1f

    .line 491
    :cond_1f
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 492
    .line 493
    .line 494
    :goto_1f
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->permissionIdsCsv:Ljava/lang/String;

    .line 495
    .line 496
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->permissionStatesCsv:Ljava/lang/String;

    .line 500
    .line 501
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->ntfAccessComponent:Ljava/lang/String;

    .line 505
    .line 506
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->specialDataLink:Ljava/lang/String;

    .line 510
    .line 511
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->specialDataSize:Ljava/lang/Long;

    .line 515
    .line 516
    if-nez p2, :cond_20

    .line 517
    .line 518
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    .line 520
    .line 521
    goto :goto_20

    .line 522
    :cond_20
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 523
    .line 524
    .line 525
    :goto_20
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->accessibilityComponent:Ljava/lang/String;

    .line 526
    .line 527
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->ssaid:Ljava/lang/String;

    .line 531
    .line 532
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->installerPackage:Ljava/lang/String;

    .line 536
    .line 537
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->_protectedBackup:Ljava/lang/Boolean;

    .line 541
    .line 542
    if-nez p2, :cond_21

    .line 543
    .line 544
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    .line 546
    .line 547
    goto :goto_21

    .line 548
    :cond_21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 552
    .line 553
    .line 554
    move-result p2

    .line 555
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 556
    .line 557
    .line 558
    :goto_21
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->_note:Ljava/lang/String;

    .line 559
    .line 560
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->keyVersion:Ljava/lang/Integer;

    .line 564
    .line 565
    if-nez p0, :cond_22

    .line 566
    .line 567
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 568
    .line 569
    .line 570
    return-void

    .line 571
    :cond_22
    invoke-static {p1, v0, p0}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 572
    .line 573
    .line 574
    return-void
.end method
