.class final Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final appId:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "appId"
    .end annotation
.end field

.field private final backupCache:Z
    .annotation runtime Ly77;
        value = "backupCache"
    .end annotation
.end field

.field private final compressionLevel:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "compressionLevel"
    .end annotation
.end field

.field private final dataSize:J
    .annotation runtime Ly77;
        value = "dataSize"
    .end annotation
.end field

.field private final deDataSize:J
    .annotation runtime Ly77;
        value = "deDataSize"
    .end annotation
.end field

.field private final encrypted:Z
    .annotation runtime Ly77;
        value = "encrypted"
    .end annotation
.end field

.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ly77;
        value = "entries"
    .end annotation
.end field

.field private final includeDeviceProtectedData:Z
    .annotation runtime Ly77;
        value = "includeDeviceProtectedData"
    .end annotation
.end field

.field private final kind:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "kind"
    .end annotation
.end field

.field private final packageName:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "packageName"
    .end annotation
.end field

.field private final version:I
    .annotation runtime Ly77;
        value = "version"
    .end annotation
.end field

.field private final versionCode:Ljava/lang/Long;
    .annotation runtime Ly77;
        value = "versionCode"
    .end annotation
.end field

.field private final versionName:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "versionName"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZLjava/lang/String;ZJJLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "ZZ",
            "Ljava/lang/String;",
            "ZJJ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->kind:Ljava/lang/String;

    .line 51
    iput p2, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->version:I

    .line 52
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->packageName:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->appId:Ljava/lang/String;

    .line 54
    iput-object p5, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->versionName:Ljava/lang/String;

    .line 55
    iput-object p6, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->versionCode:Ljava/lang/Long;

    .line 56
    iput-boolean p7, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->backupCache:Z

    .line 57
    iput-boolean p8, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->includeDeviceProtectedData:Z

    .line 58
    iput-object p9, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->compressionLevel:Ljava/lang/String;

    .line 59
    iput-boolean p10, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->encrypted:Z

    .line 60
    iput-wide p11, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->dataSize:J

    .line 61
    iput-wide p13, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->deDataSize:J

    .line 62
    iput-object p15, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->entries:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZLjava/lang/String;ZJJLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 17

    .line 1
    and-int/lit8 v0, p16, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "swiftbackup.app-data"

    .line 6
    .line 7
    move-object v2, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object/from16 v2, p1

    .line 10
    .line 11
    :goto_0
    and-int/lit8 v0, p16, 0x2

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    move v3, v0

    .line 17
    :goto_1
    move-object/from16 v1, p0

    .line 18
    .line 19
    move-object/from16 v4, p3

    .line 20
    .line 21
    move-object/from16 v5, p4

    .line 22
    .line 23
    move-object/from16 v6, p5

    .line 24
    .line 25
    move-object/from16 v7, p6

    .line 26
    .line 27
    move/from16 v8, p7

    .line 28
    .line 29
    move/from16 v9, p8

    .line 30
    .line 31
    move-object/from16 v10, p9

    .line 32
    .line 33
    move/from16 v11, p10

    .line 34
    .line 35
    move-wide/from16 v12, p11

    .line 36
    .line 37
    move-wide/from16 v14, p13

    .line 38
    .line 39
    move-object/from16 v16, p15

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_1
    move/from16 v3, p2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :goto_2
    invoke-direct/range {v1 .. v16}, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZLjava/lang/String;ZJJLjava/util/List;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZLjava/lang/String;ZJJLjava/util/List;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p16

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->kind:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->version:I

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->packageName:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->appId:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->versionName:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->versionCode:Ljava/lang/Long;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-boolean v8, v0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->backupCache:Z

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-boolean v9, v0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->includeDeviceProtectedData:Z

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->compressionLevel:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-boolean v11, v0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->encrypted:Z

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-wide v12, v0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->dataSize:J

    goto :goto_a

    :cond_a
    move-wide/from16 v12, p11

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget-wide v14, v0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->deDataSize:J

    goto :goto_b

    :cond_b
    move-wide/from16 v14, p13

    :goto_b
    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_c

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->entries:Ljava/util/List;

    move-object/from16 p16, v1

    :goto_c
    move-object/from16 p1, v0

    move-object/from16 p2, v2

    move/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move/from16 p8, v8

    move/from16 p9, v9

    move-object/from16 p10, v10

    move/from16 p11, v11

    move-wide/from16 p12, v12

    move-wide/from16 p14, v14

    goto :goto_d

    :cond_c
    move-object/from16 p16, p15

    goto :goto_c

    :goto_d
    invoke-virtual/range {p1 .. p16}, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->copy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZLjava/lang/String;ZJJLjava/util/List;)Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->kind:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component10()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->encrypted:Z

    .line 2
    .line 3
    return p0
.end method

.method public final component11()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->dataSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component12()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->deDataSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component13()Ljava/util/List;
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
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->entries:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->version:I

    .line 2
    .line 3
    return p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->versionName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component6()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->versionCode:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component7()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->backupCache:Z

    .line 2
    .line 3
    return p0
.end method

.method public final component8()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->includeDeviceProtectedData:Z

    .line 2
    .line 3
    return p0
.end method

.method public final component9()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->compressionLevel:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZLjava/lang/String;ZJJLjava/util/List;)Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "ZZ",
            "Ljava/lang/String;",
            "ZJJ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;"
        }
    .end annotation

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;

    .line 17
    .line 18
    move-object/from16 v1, p1

    .line 19
    .line 20
    move/from16 v2, p2

    .line 21
    .line 22
    move-object/from16 v3, p3

    .line 23
    .line 24
    move-object/from16 v4, p4

    .line 25
    .line 26
    move-object/from16 v5, p5

    .line 27
    .line 28
    move-object/from16 v6, p6

    .line 29
    .line 30
    move/from16 v7, p7

    .line 31
    .line 32
    move/from16 v8, p8

    .line 33
    .line 34
    move-object/from16 v9, p9

    .line 35
    .line 36
    move/from16 v10, p10

    .line 37
    .line 38
    move-wide/from16 v11, p11

    .line 39
    .line 40
    move-wide/from16 v13, p13

    .line 41
    .line 42
    move-object/from16 v15, p15

    .line 43
    .line 44
    invoke-direct/range {v0 .. v15}, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZLjava/lang/String;ZJJLjava/util/List;)V

    .line 45
    .line 46
    .line 47
    return-object v0
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
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->kind:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->kind:Ljava/lang/String;

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
    iget v1, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->version:I

    .line 25
    .line 26
    iget v3, p1, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->version:I

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->packageName:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->packageName:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->appId:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->appId:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->versionName:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->versionName:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->versionCode:Ljava/lang/Long;

    .line 65
    .line 66
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->versionCode:Ljava/lang/Long;

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
    iget-boolean v1, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->backupCache:Z

    .line 76
    .line 77
    iget-boolean v3, p1, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->backupCache:Z

    .line 78
    .line 79
    if-eq v1, v3, :cond_8

    .line 80
    .line 81
    return v2

    .line 82
    :cond_8
    iget-boolean v1, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->includeDeviceProtectedData:Z

    .line 83
    .line 84
    iget-boolean v3, p1, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->includeDeviceProtectedData:Z

    .line 85
    .line 86
    if-eq v1, v3, :cond_9

    .line 87
    .line 88
    return v2

    .line 89
    :cond_9
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->compressionLevel:Ljava/lang/String;

    .line 90
    .line 91
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->compressionLevel:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_a

    .line 98
    .line 99
    return v2

    .line 100
    :cond_a
    iget-boolean v1, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->encrypted:Z

    .line 101
    .line 102
    iget-boolean v3, p1, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->encrypted:Z

    .line 103
    .line 104
    if-eq v1, v3, :cond_b

    .line 105
    .line 106
    return v2

    .line 107
    :cond_b
    iget-wide v3, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->dataSize:J

    .line 108
    .line 109
    iget-wide v5, p1, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->dataSize:J

    .line 110
    .line 111
    cmp-long v1, v3, v5

    .line 112
    .line 113
    if-eqz v1, :cond_c

    .line 114
    .line 115
    return v2

    .line 116
    :cond_c
    iget-wide v3, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->deDataSize:J

    .line 117
    .line 118
    iget-wide v5, p1, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->deDataSize:J

    .line 119
    .line 120
    cmp-long v1, v3, v5

    .line 121
    .line 122
    if-eqz v1, :cond_d

    .line 123
    .line 124
    return v2

    .line 125
    :cond_d
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->entries:Ljava/util/List;

    .line 126
    .line 127
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->entries:Ljava/util/List;

    .line 128
    .line 129
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    if-nez p0, :cond_e

    .line 134
    .line 135
    return v2

    .line 136
    :cond_e
    return v0
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getBackupCache()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->backupCache:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getCompressionLevel()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->compressionLevel:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDataSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->dataSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getDeDataSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->deDataSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getEncrypted()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->encrypted:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getEntries()Ljava/util/List;
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
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->entries:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getIncludeDeviceProtectedData()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->includeDeviceProtectedData:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getKind()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->kind:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getVersion()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->version:I

    .line 2
    .line 3
    return p0
.end method

.method public final getVersionCode()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->versionCode:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getVersionName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->versionName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->kind:Ljava/lang/String;

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
    iget v2, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->version:I

    .line 11
    .line 12
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->packageName:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->appId:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->versionName:Ljava/lang/String;

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
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->versionCode:Ljava/lang/Long;

    .line 42
    .line 43
    if-nez v2, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    :goto_1
    add-int/2addr v0, v3

    .line 51
    mul-int/2addr v0, v1

    .line 52
    iget-boolean v2, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->backupCache:Z

    .line 53
    .line 54
    invoke-static {v0, v1, v2}, Lfz5;->h(IIZ)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iget-boolean v2, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->includeDeviceProtectedData:Z

    .line 59
    .line 60
    invoke-static {v0, v1, v2}, Lfz5;->h(IIZ)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->compressionLevel:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iget-boolean v2, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->encrypted:Z

    .line 71
    .line 72
    invoke-static {v0, v1, v2}, Lfz5;->h(IIZ)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    iget-wide v2, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->dataSize:J

    .line 77
    .line 78
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iget-wide v2, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->deDataSize:J

    .line 83
    .line 84
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->entries:Ljava/util/List;

    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    add-int/2addr p0, v0

    .line 95
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->kind:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, v0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->version:I

    .line 6
    .line 7
    iget-object v3, v0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->packageName:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, v0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->appId:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, v0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->versionName:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, v0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->versionCode:Ljava/lang/Long;

    .line 14
    .line 15
    iget-boolean v7, v0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->backupCache:Z

    .line 16
    .line 17
    iget-boolean v8, v0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->includeDeviceProtectedData:Z

    .line 18
    .line 19
    iget-object v9, v0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->compressionLevel:Ljava/lang/String;

    .line 20
    .line 21
    iget-boolean v10, v0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->encrypted:Z

    .line 22
    .line 23
    iget-wide v11, v0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->dataSize:J

    .line 24
    .line 25
    iget-wide v13, v0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->deDataSize:J

    .line 26
    .line 27
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;->entries:Ljava/util/List;

    .line 28
    .line 29
    const-string v15, ", version="

    .line 30
    .line 31
    move-object/from16 p0, v0

    .line 32
    .line 33
    const-string v0, ", packageName="

    .line 34
    .line 35
    move-wide/from16 v16, v13

    .line 36
    .line 37
    const-string v13, "SbaAppDataArchiveMetadata(kind="

    .line 38
    .line 39
    invoke-static {v13, v1, v15, v2, v0}, Ldj7;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, ", appId="

    .line 44
    .line 45
    const-string v2, ", versionName="

    .line 46
    .line 47
    invoke-static {v0, v3, v1, v4, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", versionCode="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, ", backupCache="

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v1, ", includeDeviceProtectedData="

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v1, ", compressionLevel="

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v1, ", encrypted="

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", dataSize="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v1, ", deDataSize="

    .line 102
    .line 103
    const-string v2, ", entries="

    .line 104
    .line 105
    move-wide/from16 v3, v16

    .line 106
    .line 107
    invoke-static {v0, v1, v3, v4, v2}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string v1, ")"

    .line 111
    .line 112
    move-object/from16 v2, p0

    .line 113
    .line 114
    invoke-static {v0, v2, v1}, Ldj7;->o(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    return-object v0
.end method
