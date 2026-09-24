.class public final Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final apiKey:Ljava/lang/String;

.field private final authVersion:I

.field private final baseFolderUuid:Ljava/lang/String;

.field private final email:Ljava/lang/String;

.field private final encryptionKeyHex:Ljava/lang/String;

.field private final legacyNameHmacKeyHex:Ljava/lang/String;

.field private final metadataKeysHex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final nameHmacKeyHex:Ljava/lang/String;

.field private final nameHmacKeyVersion:I

.field private final salt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->email:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->apiKey:Ljava/lang/String;

    .line 52
    iput p3, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->authVersion:I

    .line 53
    iput-object p4, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->encryptionKeyHex:Ljava/lang/String;

    .line 54
    iput-object p5, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->metadataKeysHex:Ljava/util/List;

    .line 55
    iput-object p6, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->salt:Ljava/lang/String;

    .line 56
    iput-object p7, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->baseFolderUuid:Ljava/lang/String;

    .line 57
    iput-object p8, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->nameHmacKeyHex:Ljava/lang/String;

    .line 58
    iput-object p9, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->legacyNameHmacKeyHex:Ljava/lang/String;

    .line 59
    iput p10, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->nameHmacKeyVersion:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    .line 1
    move/from16 v0, p11

    .line 2
    .line 3
    and-int/lit16 v1, v0, 0x80

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    move-object v10, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object/from16 v10, p8

    .line 12
    .line 13
    :goto_0
    and-int/lit16 v1, v0, 0x100

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    move-object v11, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move-object/from16 v11, p9

    .line 21
    .line 22
    :goto_1
    and-int/lit16 v0, v0, 0x200

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    move v12, v0

    .line 28
    :goto_2
    move-object v2, p0

    .line 29
    move-object v3, p1

    .line 30
    move-object v4, p2

    .line 31
    move/from16 v5, p3

    .line 32
    .line 33
    move-object/from16 v6, p4

    .line 34
    .line 35
    move-object/from16 v7, p5

    .line 36
    .line 37
    move-object/from16 v8, p6

    .line 38
    .line 39
    move-object/from16 v9, p7

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_2
    move/from16 v12, p10

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :goto_3
    invoke-direct/range {v2 .. v12}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;
    .locals 0

    .line 1
    and-int/lit8 p12, p11, 0x1

    .line 2
    .line 3
    if-eqz p12, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->email:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p12, p11, 0x2

    .line 8
    .line 9
    if-eqz p12, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->apiKey:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p12, p11, 0x4

    .line 14
    .line 15
    if-eqz p12, :cond_2

    .line 16
    .line 17
    iget p3, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->authVersion:I

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p12, p11, 0x8

    .line 20
    .line 21
    if-eqz p12, :cond_3

    .line 22
    .line 23
    iget-object p4, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->encryptionKeyHex:Ljava/lang/String;

    .line 24
    .line 25
    :cond_3
    and-int/lit8 p12, p11, 0x10

    .line 26
    .line 27
    if-eqz p12, :cond_4

    .line 28
    .line 29
    iget-object p5, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->metadataKeysHex:Ljava/util/List;

    .line 30
    .line 31
    :cond_4
    and-int/lit8 p12, p11, 0x20

    .line 32
    .line 33
    if-eqz p12, :cond_5

    .line 34
    .line 35
    iget-object p6, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->salt:Ljava/lang/String;

    .line 36
    .line 37
    :cond_5
    and-int/lit8 p12, p11, 0x40

    .line 38
    .line 39
    if-eqz p12, :cond_6

    .line 40
    .line 41
    iget-object p7, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->baseFolderUuid:Ljava/lang/String;

    .line 42
    .line 43
    :cond_6
    and-int/lit16 p12, p11, 0x80

    .line 44
    .line 45
    if-eqz p12, :cond_7

    .line 46
    .line 47
    iget-object p8, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->nameHmacKeyHex:Ljava/lang/String;

    .line 48
    .line 49
    :cond_7
    and-int/lit16 p12, p11, 0x100

    .line 50
    .line 51
    if-eqz p12, :cond_8

    .line 52
    .line 53
    iget-object p9, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->legacyNameHmacKeyHex:Ljava/lang/String;

    .line 54
    .line 55
    :cond_8
    and-int/lit16 p11, p11, 0x200

    .line 56
    .line 57
    if-eqz p11, :cond_9

    .line 58
    .line 59
    iget p10, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->nameHmacKeyVersion:I

    .line 60
    .line 61
    :cond_9
    move-object p11, p9

    .line 62
    move p12, p10

    .line 63
    move-object p9, p7

    .line 64
    move-object p10, p8

    .line 65
    move-object p7, p5

    .line 66
    move-object p8, p6

    .line 67
    move p5, p3

    .line 68
    move-object p6, p4

    .line 69
    move-object p3, p1

    .line 70
    move-object p4, p2

    .line 71
    move-object p2, p0

    .line 72
    invoke-virtual/range {p2 .. p12}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->copy(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0
.end method

.method private final isHexDigit(C)Z
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_1

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/16 p1, 0x61

    .line 12
    .line 13
    if-gt p1, p0, :cond_0

    .line 14
    .line 15
    const/16 p1, 0x67

    .line 16
    .line 17
    if-ge p0, p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 23
    return p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->email:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component10()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->nameHmacKeyVersion:I

    .line 2
    .line 3
    return p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->apiKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->authVersion:I

    .line 2
    .line 3
    return p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->encryptionKeyHex:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component5()Ljava/util/List;
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
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->metadataKeysHex:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->salt:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->baseFolderUuid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->nameHmacKeyHex:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component9()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->legacyNameHmacKeyHex:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;"
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
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-instance p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 23
    .line 24
    invoke-direct/range {p0 .. p10}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
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
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->email:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->email:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->apiKey:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->apiKey:Ljava/lang/String;

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
    iget v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->authVersion:I

    .line 36
    .line 37
    iget v3, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->authVersion:I

    .line 38
    .line 39
    if-eq v1, v3, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->encryptionKeyHex:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->encryptionKeyHex:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->metadataKeysHex:Ljava/util/List;

    .line 54
    .line 55
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->metadataKeysHex:Ljava/util/List;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->salt:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->salt:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->baseFolderUuid:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->baseFolderUuid:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->nameHmacKeyHex:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->nameHmacKeyHex:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->legacyNameHmacKeyHex:Ljava/lang/String;

    .line 98
    .line 99
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->legacyNameHmacKeyHex:Ljava/lang/String;

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
    iget p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->nameHmacKeyVersion:I

    .line 109
    .line 110
    iget p1, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->nameHmacKeyVersion:I

    .line 111
    .line 112
    if-eq p0, p1, :cond_b

    .line 113
    .line 114
    return v2

    .line 115
    :cond_b
    return v0
.end method

.method public final getApiKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->apiKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAuthVersion()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->authVersion:I

    .line 2
    .line 3
    return p0
.end method

.method public final getBaseFolderUuid()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->baseFolderUuid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getEmail()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->email:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getEncryptionKeyHex()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->encryptionKeyHex:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLegacyNameHmacKeyHex()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->legacyNameHmacKeyHex:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMetadataKeysHex()Ljava/util/List;
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
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->metadataKeysHex:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getNameHmacKeyHex()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->nameHmacKeyHex:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getNameHmacKeyVersion()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->nameHmacKeyVersion:I

    .line 2
    .line 3
    return p0
.end method

.method public final getSalt()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->salt:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hasRestorableCryptoState()Z
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->email:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_12

    .line 9
    .line 10
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->apiKey:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_12

    .line 17
    .line 18
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->baseFolderUuid:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    goto/16 :goto_8

    .line 27
    .line 28
    :cond_0
    invoke-static {}, Leb3;->getEntries()Ljx2;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v2, Ljava/util/ArrayList;

    .line 33
    .line 34
    const/16 v3, 0xa

    .line 35
    .line 36
    invoke-static {v0, v3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    .line 42
    .line 43
    check-cast v0, Lz3;

    .line 44
    .line 45
    new-instance v3, Lw3;

    .line 46
    .line 47
    invoke-direct {v3, v0}, Lw3;-><init>(Lz3;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-virtual {v3}, Lw3;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    invoke-virtual {v3}, Lw3;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Leb3;

    .line 61
    .line 62
    invoke-virtual {v0}, Leb3;->getValue()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    iget v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->authVersion:I

    .line 75
    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_2

    .line 85
    .line 86
    goto/16 :goto_8

    .line 87
    .line 88
    :cond_2
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->metadataKeysHex:Ljava/util/List;

    .line 89
    .line 90
    const/4 v2, 0x1

    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_4

    .line 98
    .line 99
    :cond_3
    move v0, v1

    .line 100
    goto :goto_3

    .line 101
    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_3

    .line 110
    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    check-cast v3, Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-nez v4, :cond_6

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    rem-int/lit8 v4, v4, 0x2

    .line 129
    .line 130
    if-nez v4, :cond_8

    .line 131
    .line 132
    move v4, v1

    .line 133
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    if-ge v4, v5, :cond_5

    .line 138
    .line 139
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    invoke-direct {p0, v5}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->isHexDigit(C)Z

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    if-nez v5, :cond_7

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_8
    :goto_2
    move v0, v2

    .line 154
    :goto_3
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->metadataKeysHex:Ljava/util/List;

    .line 155
    .line 156
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    if-nez v3, :cond_12

    .line 161
    .line 162
    if-eqz v0, :cond_9

    .line 163
    .line 164
    goto/16 :goto_8

    .line 165
    .line 166
    :cond_9
    iget v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->authVersion:I

    .line 167
    .line 168
    sget-object v3, Leb3;->V3:Leb3;

    .line 169
    .line 170
    invoke-virtual {v3}, Leb3;->getValue()I

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    if-ne v0, v3, :cond_11

    .line 175
    .line 176
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->metadataKeysHex:Ljava/util/List;

    .line 177
    .line 178
    invoke-static {v0}, Lel1;->l1(Ljava/util/List;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    check-cast v0, Ljava/lang/String;

    .line 183
    .line 184
    if-eqz v0, :cond_12

    .line 185
    .line 186
    invoke-static {v0}, Lhb3;->q(Ljava/lang/String;)[B

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    new-instance v3, Ljava/lang/String;

    .line 191
    .line 192
    sget-object v4, Lf51;->d:Ljava/nio/charset/Charset;

    .line 193
    .line 194
    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    const/16 v4, 0x40

    .line 202
    .line 203
    if-ne v0, v4, :cond_12

    .line 204
    .line 205
    move v0, v1

    .line 206
    :goto_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 207
    .line 208
    .line 209
    move-result v5

    .line 210
    if-ge v0, v5, :cond_b

    .line 211
    .line 212
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    invoke-direct {p0, v5}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->isHexDigit(C)Z

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    if-nez v5, :cond_a

    .line 221
    .line 222
    goto :goto_8

    .line 223
    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 224
    .line 225
    goto :goto_4

    .line 226
    :cond_b
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->nameHmacKeyHex:Ljava/lang/String;

    .line 227
    .line 228
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-lez v0, :cond_d

    .line 233
    .line 234
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->nameHmacKeyHex:Ljava/lang/String;

    .line 235
    .line 236
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-ne v0, v4, :cond_12

    .line 241
    .line 242
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->nameHmacKeyHex:Ljava/lang/String;

    .line 243
    .line 244
    move v3, v1

    .line 245
    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 246
    .line 247
    .line 248
    move-result v5

    .line 249
    if-ge v3, v5, :cond_d

    .line 250
    .line 251
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 252
    .line 253
    .line 254
    move-result v5

    .line 255
    invoke-direct {p0, v5}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->isHexDigit(C)Z

    .line 256
    .line 257
    .line 258
    move-result v5

    .line 259
    if-nez v5, :cond_c

    .line 260
    .line 261
    goto :goto_8

    .line 262
    :cond_c
    add-int/lit8 v3, v3, 0x1

    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_d
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->legacyNameHmacKeyHex:Ljava/lang/String;

    .line 266
    .line 267
    if-eqz v0, :cond_10

    .line 268
    .line 269
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    if-nez v0, :cond_e

    .line 274
    .line 275
    goto :goto_7

    .line 276
    :cond_e
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->legacyNameHmacKeyHex:Ljava/lang/String;

    .line 277
    .line 278
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    if-ne v0, v4, :cond_12

    .line 283
    .line 284
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->legacyNameHmacKeyHex:Ljava/lang/String;

    .line 285
    .line 286
    move v3, v1

    .line 287
    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 288
    .line 289
    .line 290
    move-result v4

    .line 291
    if-ge v3, v4, :cond_10

    .line 292
    .line 293
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    invoke-direct {p0, v4}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->isHexDigit(C)Z

    .line 298
    .line 299
    .line 300
    move-result v4

    .line 301
    if-nez v4, :cond_f

    .line 302
    .line 303
    goto :goto_8

    .line 304
    :cond_f
    add-int/lit8 v3, v3, 0x1

    .line 305
    .line 306
    goto :goto_6

    .line 307
    :cond_10
    :goto_7
    iget p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->nameHmacKeyVersion:I

    .line 308
    .line 309
    if-ltz p0, :cond_12

    .line 310
    .line 311
    const/4 v0, 0x3

    .line 312
    if-ge p0, v0, :cond_12

    .line 313
    .line 314
    :cond_11
    move v1, v2

    .line 315
    :cond_12
    :goto_8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 316
    .line 317
    .line 318
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    goto :goto_9

    .line 320
    :catchall_0
    move-exception p0

    .line 321
    new-instance v0, Lbn6;

    .line 322
    .line 323
    invoke-direct {v0, p0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 324
    .line 325
    .line 326
    move-object p0, v0

    .line 327
    :goto_9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 328
    .line 329
    instance-of v1, p0, Lbn6;

    .line 330
    .line 331
    if-eqz v1, :cond_13

    .line 332
    .line 333
    move-object p0, v0

    .line 334
    :cond_13
    check-cast p0, Ljava/lang/Boolean;

    .line 335
    .line 336
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 337
    .line 338
    .line 339
    move-result p0

    .line 340
    return p0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->email:Ljava/lang/String;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->apiKey:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->authVersion:I

    .line 17
    .line 18
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->encryptionKeyHex:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->metadataKeysHex:Ljava/util/List;

    .line 29
    .line 30
    invoke-static {v2, v0, v1}, Lfz5;->i(Ljava/util/List;II)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->salt:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->baseFolderUuid:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->nameHmacKeyHex:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->legacyNameHmacKeyHex:Ljava/lang/String;

    .line 53
    .line 54
    if-nez v2, :cond_0

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    :goto_0
    add-int/2addr v0, v2

    .line 63
    mul-int/2addr v0, v1

    .line 64
    iget p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->nameHmacKeyVersion:I

    .line 65
    .line 66
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

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
    .locals 12

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->email:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->apiKey:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->authVersion:I

    .line 6
    .line 7
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->encryptionKeyHex:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->metadataKeysHex:Ljava/util/List;

    .line 10
    .line 11
    iget-object v5, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->salt:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->baseFolderUuid:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->nameHmacKeyHex:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v8, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->legacyNameHmacKeyHex:Ljava/lang/String;

    .line 18
    .line 19
    iget p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->nameHmacKeyVersion:I

    .line 20
    .line 21
    const-string v9, ", apiKey="

    .line 22
    .line 23
    const-string v10, ", authVersion="

    .line 24
    .line 25
    const-string v11, "FilenSession(email="

    .line 26
    .line 27
    invoke-static {v11, v0, v9, v1, v10}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ", encryptionKeyHex="

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, ", metadataKeysHex="

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, ", salt="

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v1, ", baseFolderUuid="

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", nameHmacKeyHex="

    .line 64
    .line 65
    const-string v2, ", legacyNameHmacKeyHex="

    .line 66
    .line 67
    invoke-static {v0, v6, v1, v7, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", nameHmacKeyVersion="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p0, ")"

    .line 82
    .line 83
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0
.end method
