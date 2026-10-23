.class public final Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;
    }
.end annotation


# instance fields
.field private final appName:Ljava/lang/String;

.field private final exportedAt:J

.field private final exportedBy:Ljava/lang/String;

.field private final files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final installerPackage:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final versionCode:Ljava/lang/Long;

.field private final versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;",
            ">;)V"
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
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->packageName:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->appName:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->versionName:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p4, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->versionCode:Ljava/lang/Long;

    .line 23
    .line 24
    iput-object p5, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->installerPackage:Ljava/lang/String;

    .line 25
    .line 26
    iput-wide p6, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->exportedAt:J

    .line 27
    .line 28
    iput-object p8, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->exportedBy:Ljava/lang/String;

    .line 29
    .line 30
    iput-object p9, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->files:Ljava/util/List;

    .line 31
    .line 32
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    and-int/lit8 v0, p10, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v6, v0

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    goto :goto_1

    :cond_0
    move-object/from16 v6, p5

    goto :goto_0

    .line 33
    :goto_1
    invoke-direct/range {v1 .. v10}, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;
    .locals 0

    .line 1
    and-int/lit8 p11, p10, 0x1

    .line 2
    .line 3
    if-eqz p11, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->packageName:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p11, p10, 0x2

    .line 8
    .line 9
    if-eqz p11, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->appName:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p11, p10, 0x4

    .line 14
    .line 15
    if-eqz p11, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->versionName:Ljava/lang/String;

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p11, p10, 0x8

    .line 20
    .line 21
    if-eqz p11, :cond_3

    .line 22
    .line 23
    iget-object p4, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->versionCode:Ljava/lang/Long;

    .line 24
    .line 25
    :cond_3
    and-int/lit8 p11, p10, 0x10

    .line 26
    .line 27
    if-eqz p11, :cond_4

    .line 28
    .line 29
    iget-object p5, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->installerPackage:Ljava/lang/String;

    .line 30
    .line 31
    :cond_4
    and-int/lit8 p11, p10, 0x20

    .line 32
    .line 33
    if-eqz p11, :cond_5

    .line 34
    .line 35
    iget-wide p6, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->exportedAt:J

    .line 36
    .line 37
    :cond_5
    and-int/lit8 p11, p10, 0x40

    .line 38
    .line 39
    if-eqz p11, :cond_6

    .line 40
    .line 41
    iget-object p8, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->exportedBy:Ljava/lang/String;

    .line 42
    .line 43
    :cond_6
    and-int/lit16 p10, p10, 0x80

    .line 44
    .line 45
    if-eqz p10, :cond_7

    .line 46
    .line 47
    iget-object p9, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->files:Ljava/util/List;

    .line 48
    .line 49
    :cond_7
    move-object p10, p8

    .line 50
    move-object p11, p9

    .line 51
    move-wide p8, p6

    .line 52
    move-object p6, p4

    .line 53
    move-object p7, p5

    .line 54
    move-object p4, p2

    .line 55
    move-object p5, p3

    .line 56
    move-object p2, p0

    .line 57
    move-object p3, p1

    .line 58
    invoke-virtual/range {p2 .. p11}, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->appName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->versionName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component4()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->versionCode:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->installerPackage:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component6()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->exportedAt:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->exportedBy:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component8()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->files:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;",
            ">;)",
            "Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;"
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
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;

    .line 14
    .line 15
    invoke-direct/range {p0 .. p9}, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->packageName:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->packageName:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->appName:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->appName:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->versionName:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->versionName:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->versionCode:Ljava/lang/Long;

    .line 47
    .line 48
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->versionCode:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->installerPackage:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->installerPackage:Ljava/lang/String;

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
    iget-wide v3, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->exportedAt:J

    .line 69
    .line 70
    iget-wide v5, p1, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->exportedAt:J

    .line 71
    .line 72
    cmp-long v1, v3, v5

    .line 73
    .line 74
    if-eqz v1, :cond_7

    .line 75
    .line 76
    return v2

    .line 77
    :cond_7
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->exportedBy:Ljava/lang/String;

    .line 78
    .line 79
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->exportedBy:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_8

    .line 86
    .line 87
    return v2

    .line 88
    :cond_8
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->files:Ljava/util/List;

    .line 89
    .line 90
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->files:Ljava/util/List;

    .line 91
    .line 92
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    if-nez p0, :cond_9

    .line 97
    .line 98
    return v2

    .line 99
    :cond_9
    return v0
.end method

.method public final getAppName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->appName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExportedAt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->exportedAt:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getExportedBy()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->exportedBy:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getFiles()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->files:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getInstallerPackage()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->installerPackage:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getVersionCode()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->versionCode:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getVersionName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->versionName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->packageName:Ljava/lang/String;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->appName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->versionName:Ljava/lang/String;

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
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->versionCode:Ljava/lang/Long;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->installerPackage:Ljava/lang/String;

    .line 42
    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    :goto_2
    add-int/2addr v0, v3

    .line 51
    mul-int/2addr v0, v1

    .line 52
    iget-wide v2, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->exportedAt:J

    .line 53
    .line 54
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->exportedBy:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->files:Ljava/util/List;

    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    add-int/2addr p0, v0

    .line 71
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->appName:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->versionName:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->versionCode:Ljava/lang/Long;

    .line 8
    .line 9
    iget-object v4, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->installerPackage:Ljava/lang/String;

    .line 10
    .line 11
    iget-wide v5, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->exportedAt:J

    .line 12
    .line 13
    iget-object v7, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->exportedBy:Ljava/lang/String;

    .line 14
    .line 15
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->files:Ljava/util/List;

    .line 16
    .line 17
    const-string v8, ", appName="

    .line 18
    .line 19
    const-string v9, ", versionName="

    .line 20
    .line 21
    const-string v10, "ApkSharePackageMetadata(packageName="

    .line 22
    .line 23
    invoke-static {v10, v0, v8, v1, v9}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ", versionCode="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, ", installerPackage="

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", exportedAt="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", exportedBy="

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v1, ", files="

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p0, ")"

    .line 71
    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0
.end method
