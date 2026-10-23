.class public abstract Lz85;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:[[D

.field public static final b:[D

.field public static final c:Ljava/lang/Object;

.field public static final d:Lpb8;

.field public static final e:Lpb8;

.field public static f:Z


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v1, v0, [D

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    new-array v2, v0, [D

    .line 8
    .line 9
    fill-array-data v2, :array_1

    .line 10
    .line 11
    .line 12
    new-array v3, v0, [D

    .line 13
    .line 14
    fill-array-data v3, :array_2

    .line 15
    .line 16
    .line 17
    filled-new-array {v1, v2, v3}, [[D

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sput-object v1, Lz85;->a:[[D

    .line 22
    .line 23
    new-array v0, v0, [D

    .line 24
    .line 25
    fill-array-data v0, :array_3

    .line 26
    .line 27
    .line 28
    sput-object v0, Lz85;->b:[D

    .line 29
    .line 30
    new-instance v0, Ljava/lang/Object;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lz85;->c:Ljava/lang/Object;

    .line 36
    .line 37
    new-instance v0, Lpb8;

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-direct {v0, v1}, Lpb8;-><init>(Z)V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lz85;->d:Lpb8;

    .line 44
    .line 45
    new-instance v0, Lpb8;

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-direct {v0, v1}, Lpb8;-><init>(Z)V

    .line 49
    .line 50
    .line 51
    sput-object v0, Lz85;->e:Lpb8;

    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :array_0
    .array-data 8
        0x3fda63c2e8477c96L    # 0.41233895
        0x3fd6e341ae4b2c79L    # 0.35762064
        0x3fc71af7273e5d5eL    # 0.18051042
    .end array-data

    .line 56
    .line 57
    .line 58
    :array_1
    .array-data 8
        0x3fcb367a0f9096bcL    # 0.2126
        0x3fe6e2eb1c432ca5L    # 0.7152
        0x3fb27bb2fec56d5dL    # 0.0722
    .end array-data

    :array_2
    .array-data 8
        0x3f93c8fde0401c25L    # 0.01932141
        0x3fbe818525c434ceL    # 0.11916382
        0x3fee693974c0c730L    # 0.95034478
    .end array-data

    :array_3
    .array-data 8
        0x4057c3020c49ba5eL    # 95.047
        0x4059000000000000L    # 100.0
        0x405b3883126e978dL    # 108.883
    .end array-data
.end method

.method public static final A(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, ""

    .line 4
    .line 5
    :cond_0
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v0, 0x1

    .line 14
    new-array v0, v0, [C

    .line 15
    .line 16
    const/16 v1, 0x2f

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    aput-char v1, v0, v2

    .line 20
    .line 21
    invoke-static {p0, v0}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static B(Lzq8;Lg45;)[B
    .locals 14

    .line 1
    iget v0, p1, Lg45;->g:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x20

    .line 4
    .line 5
    new-array v0, v0, [B

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    iget v3, p1, Lg45;->c:I

    .line 10
    .line 11
    if-ge v2, v3, :cond_1

    .line 12
    .line 13
    iget-object v3, p0, Lzq8;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v3, [Ll22;

    .line 16
    .line 17
    aget-object v3, v3, v2

    .line 18
    .line 19
    const/16 v4, 0x140

    .line 20
    .line 21
    new-array v5, v4, [B

    .line 22
    .line 23
    move v6, v1

    .line 24
    :goto_1
    const/16 v7, 0x40

    .line 25
    .line 26
    if-ge v6, v7, :cond_0

    .line 27
    .line 28
    mul-int/lit8 v7, v6, 0x5

    .line 29
    .line 30
    iget-object v8, v3, Ll22;->b:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v8, [I

    .line 33
    .line 34
    mul-int/lit8 v9, v6, 0x4

    .line 35
    .line 36
    aget v10, v8, v9

    .line 37
    .line 38
    int-to-byte v11, v10

    .line 39
    aput-byte v11, v5, v7

    .line 40
    .line 41
    add-int/lit8 v11, v7, 0x1

    .line 42
    .line 43
    shr-int/lit8 v10, v10, 0x8

    .line 44
    .line 45
    add-int/lit8 v12, v9, 0x1

    .line 46
    .line 47
    aget v12, v8, v12

    .line 48
    .line 49
    shl-int/lit8 v13, v12, 0x2

    .line 50
    .line 51
    or-int/2addr v10, v13

    .line 52
    int-to-byte v10, v10

    .line 53
    aput-byte v10, v5, v11

    .line 54
    .line 55
    add-int/lit8 v10, v7, 0x2

    .line 56
    .line 57
    shr-int/lit8 v11, v12, 0x6

    .line 58
    .line 59
    add-int/lit8 v12, v9, 0x2

    .line 60
    .line 61
    aget v12, v8, v12

    .line 62
    .line 63
    shl-int/lit8 v13, v12, 0x4

    .line 64
    .line 65
    or-int/2addr v11, v13

    .line 66
    int-to-byte v11, v11

    .line 67
    aput-byte v11, v5, v10

    .line 68
    .line 69
    add-int/lit8 v10, v7, 0x3

    .line 70
    .line 71
    shr-int/lit8 v11, v12, 0x4

    .line 72
    .line 73
    add-int/lit8 v9, v9, 0x3

    .line 74
    .line 75
    aget v8, v8, v9

    .line 76
    .line 77
    shl-int/lit8 v9, v8, 0x6

    .line 78
    .line 79
    or-int/2addr v9, v11

    .line 80
    int-to-byte v9, v9

    .line 81
    aput-byte v9, v5, v10

    .line 82
    .line 83
    add-int/lit8 v7, v7, 0x4

    .line 84
    .line 85
    shr-int/lit8 v8, v8, 0x2

    .line 86
    .line 87
    int-to-byte v8, v8

    .line 88
    aput-byte v8, v5, v7

    .line 89
    .line 90
    add-int/lit8 v6, v6, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    mul-int/lit16 v3, v2, 0x140

    .line 97
    .line 98
    invoke-static {v5, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    .line 100
    .line 101
    add-int/lit8 v2, v2, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    return-object v0
.end method

.method public static C(Landroid/content/Context;Landroid/util/TypedValue;)I
    .locals 1

    .line 1
    iget v0, p1, Landroid/util/TypedValue;->resourceId:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    iget p0, p1, Landroid/util/TypedValue;->data:I

    .line 11
    .line 12
    return p0
.end method

.method public static final D(Lorg/swiftapps/swiftbackup/folders/data/FolderState;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Lq63;Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    invoke-interface {p1, p5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    sget-object p2, Lsv2;->a:Lsv2;

    .line 12
    .line 13
    :cond_0
    invoke-interface {p2, p5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_1
    if-nez p3, :cond_2

    .line 19
    .line 20
    sget-object p3, Lpv2;->a:Lpv2;

    .line 21
    .line 22
    :cond_2
    invoke-interface {p3, p5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    :cond_3
    invoke-virtual {p4, p5}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Lq63;->j()Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0
.end method

.method public static E(Lsa1;Lq63;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lg00;->a:Lg00;

    .line 5
    .line 6
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "android.hardware.telephony"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 19
    .line 20
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    sget-object p1, Lzn4;->a:Lzn4;

    .line 25
    .line 26
    const-string p1, "Feature not supported on this device"

    .line 27
    .line 28
    invoke-static {p0, p1}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 33
    .line 34
    const-class v1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;

    .line 35
    .line 36
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .line 38
    .line 39
    const-string v1, "EXTRA_BACKUP_FILE_PATH"

    .line 40
    .line 41
    invoke-virtual {p1}, Lq63;->v()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static F(Ljava/time/Duration;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/time/Duration;->toMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long p0, v0, v2

    .line 8
    .line 9
    if-lez p0, :cond_0

    .line 10
    .line 11
    const-wide/32 v2, 0x7fffffff

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    :goto_0
    long-to-int p0, v0

    .line 19
    return p0

    .line 20
    :cond_0
    const-wide/32 v2, -0x80000000

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    goto :goto_0
.end method

.method public static G(Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;)Lz17;
    .locals 13

    .line 1
    new-instance v0, Lz17;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->getEntryType()Lb27;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lb27;->Directory:Lb27;

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    new-array v2, v2, [C

    .line 17
    .line 18
    const/16 v3, 0x2f

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    aput-char v3, v2, v4

    .line 22
    .line 23
    invoke-static {v1, v2}, Lnq7;->K0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :goto_0
    invoke-virtual {p0}, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->getEntryType()Lb27;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    sget-object v3, Lx17;->a:[I

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    aget v2, v3, v2

    .line 43
    .line 44
    packed-switch v2, :pswitch_data_0

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lq;->j()V

    .line 48
    .line 49
    .line 50
    const/4 p0, 0x0

    .line 51
    return-object p0

    .line 52
    :pswitch_0
    sget-object v2, Lc27;->Other:Lc27;

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :pswitch_1
    sget-object v2, Lc27;->BlockDevice:Lc27;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :pswitch_2
    sget-object v2, Lc27;->CharacterDevice:Lc27;

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :pswitch_3
    sget-object v2, Lc27;->Fifo:Lc27;

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :pswitch_4
    sget-object v2, Lc27;->Hardlink:Lc27;

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :pswitch_5
    sget-object v2, Lc27;->SymbolicLink:Lc27;

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :pswitch_6
    sget-object v2, Lc27;->Directory:Lc27;

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :pswitch_7
    sget-object v2, Lc27;->File:Lc27;

    .line 74
    .line 75
    :goto_1
    invoke-virtual {p0}, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->getLinkName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {p0}, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->getMode()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    invoke-virtual {p0}, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->getSize()J

    .line 84
    .line 85
    .line 86
    move-result-wide v5

    .line 87
    invoke-virtual {p0}, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->getRealSize()J

    .line 88
    .line 89
    .line 90
    move-result-wide v7

    .line 91
    invoke-virtual {p0}, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->getMtimeMs()J

    .line 92
    .line 93
    .line 94
    move-result-wide v9

    .line 95
    invoke-virtual {p0}, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->getSparse()Z

    .line 96
    .line 97
    .line 98
    move-result v11

    .line 99
    invoke-virtual {p0}, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->getXattrNames()[Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-static {p0}, Lx50;->z0([Ljava/lang/Object;)Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v12

    .line 107
    invoke-direct/range {v0 .. v12}, Lz17;-><init>(Ljava/lang/String;Lc27;Ljava/lang/String;IJJJZLjava/util/List;)V

    .line 108
    .line 109
    .line 110
    return-object v0

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final H(B)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    .line 4
    const-string p0, "quotation mark \'\"\'"

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    const/4 v0, 0x2

    .line 8
    if-ne p0, v0, :cond_1

    .line 9
    .line 10
    const-string p0, "string escape sequence \'\\\'"

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_1
    const/4 v0, 0x4

    .line 14
    if-ne p0, v0, :cond_2

    .line 15
    .line 16
    const-string p0, "comma \',\'"

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_2
    const/4 v0, 0x5

    .line 20
    if-ne p0, v0, :cond_3

    .line 21
    .line 22
    const-string p0, "colon \':\'"

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_3
    const/4 v0, 0x6

    .line 26
    if-ne p0, v0, :cond_4

    .line 27
    .line 28
    const-string p0, "start of the object \'{\'"

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_4
    const/4 v0, 0x7

    .line 32
    if-ne p0, v0, :cond_5

    .line 33
    .line 34
    const-string p0, "end of the object \'}\'"

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_5
    const/16 v0, 0x8

    .line 38
    .line 39
    if-ne p0, v0, :cond_6

    .line 40
    .line 41
    const-string p0, "start of the array \'[\'"

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_6
    const/16 v0, 0x9

    .line 45
    .line 46
    if-ne p0, v0, :cond_7

    .line 47
    .line 48
    const-string p0, "end of the array \']\'"

    .line 49
    .line 50
    return-object p0

    .line 51
    :cond_7
    const/16 v0, 0xa

    .line 52
    .line 53
    if-ne p0, v0, :cond_8

    .line 54
    .line 55
    const-string p0, "end of the input"

    .line 56
    .line 57
    return-object p0

    .line 58
    :cond_8
    const/16 v0, 0x7f

    .line 59
    .line 60
    if-ne p0, v0, :cond_9

    .line 61
    .line 62
    const-string p0, "invalid token"

    .line 63
    .line 64
    return-object p0

    .line 65
    :cond_9
    const-string p0, "valid token"

    .line 66
    .line 67
    return-object p0
.end method

.method public static I(D)D
    .locals 8

    .line 1
    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    .line 2
    .line 3
    add-double/2addr p0, v0

    .line 4
    const-wide/high16 v2, 0x405d000000000000L    # 116.0

    .line 5
    .line 6
    div-double/2addr p0, v2

    .line 7
    mul-double v4, p0, p0

    .line 8
    .line 9
    mul-double/2addr v4, p0

    .line 10
    const-wide v6, 0x3f822354d28f7cd6L    # 0.008856451679035631

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    cmpl-double v6, v4, v6

    .line 16
    .line 17
    if-lez v6, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    mul-double/2addr p0, v2

    .line 21
    sub-double/2addr p0, v0

    .line 22
    const-wide v0, 0x408c3a5ed097b426L    # 903.2962962962963

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    div-double v4, p0, v0

    .line 28
    .line 29
    :goto_0
    const-wide/high16 p0, 0x4059000000000000L    # 100.0

    .line 30
    .line 31
    mul-double/2addr v4, p0

    .line 32
    return-wide v4
.end method

.method public static J(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string p1, "null value in entry: "

    .line 11
    .line 12
    const-string v0, "=null"

    .line 13
    .line 14
    invoke-static {p1, p0, v0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string p1, "null key in entry: null="

    .line 27
    .line 28
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static final K(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V
    .locals 3

    .line 1
    if-ltz p3, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lt v0, p3, :cond_1

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-lt v0, p3, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lt v0, p3, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    :goto_0
    if-ge v0, p3, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    xor-int/2addr v1, v2

    .line 33
    int-to-byte v1, v1

    .line 34
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 35
    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-void

    .line 41
    :cond_1
    const-string p0, "That combination of buffers, offsets and length to xor result in out-of-bond accesses."

    .line 42
    .line 43
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public static final L([B[B)[B
    .locals 2

    .line 1
    array-length v0, p0

    .line 2
    array-length v1, p1

    .line 3
    if-ne v0, v1, :cond_0

    .line 4
    .line 5
    array-length v0, p0

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {p0, p1, v1, v0}, Lz85;->M([B[BII)[B

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string p0, "The lengths of x and y should match."

    .line 13
    .line 14
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method public static final M([B[BII)[B
    .locals 4

    .line 1
    if-ltz p3, :cond_1

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    sub-int/2addr v0, p3

    .line 5
    if-lt v0, p2, :cond_1

    .line 6
    .line 7
    array-length v0, p1

    .line 8
    sub-int/2addr v0, p3

    .line 9
    if-ltz v0, :cond_1

    .line 10
    .line 11
    new-array v0, p3, [B

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, p3, :cond_0

    .line 15
    .line 16
    add-int v2, v1, p2

    .line 17
    .line 18
    aget-byte v2, p0, v2

    .line 19
    .line 20
    aget-byte v3, p1, v1

    .line 21
    .line 22
    xor-int/2addr v2, v3

    .line 23
    int-to-byte v2, v2

    .line 24
    aput-byte v2, v0, v1

    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-object v0

    .line 30
    :cond_1
    const-string p0, "That combination of buffers, offsets and length to xor result in out-of-bond accesses."

    .line 31
    .line 32
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    return-object p0
.end method

.method public static varargs N([[B)[B
    .locals 7

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    :goto_0
    if-ge v2, v0, :cond_1

    .line 6
    .line 7
    aget-object v4, p0, v2

    .line 8
    .line 9
    const v5, 0x7fffffff

    .line 10
    .line 11
    .line 12
    array-length v6, v4

    .line 13
    sub-int/2addr v5, v6

    .line 14
    if-gt v3, v5, :cond_0

    .line 15
    .line 16
    array-length v4, v4

    .line 17
    add-int/2addr v3, v4

    .line 18
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string p0, "exceeded size limit"

    .line 22
    .line 23
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    return-object p0

    .line 28
    :cond_1
    new-array v0, v3, [B

    .line 29
    .line 30
    array-length v2, p0

    .line 31
    move v3, v1

    .line 32
    move v4, v3

    .line 33
    :goto_1
    if-ge v3, v2, :cond_2

    .line 34
    .line 35
    aget-object v5, p0, v3

    .line 36
    .line 37
    array-length v6, v5

    .line 38
    invoke-static {v5, v1, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    .line 40
    .line 41
    array-length v5, v5

    .line 42
    add-int/2addr v4, v5

    .line 43
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    return-object v0
.end method

.method public static final a(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;)Lna1;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getBaseUrl(Z)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    if-lez v3, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move-object v4, v1

    .line 41
    :goto_0
    if-eqz v4, :cond_1

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getProtocol()Lfd1;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Lfd1;->getDefPort()I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    :goto_1
    new-instance v3, Lna1;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0}, Lz85;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-direct {v3, v2, p0, v0}, Lna1;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    return-object v3

    .line 70
    :catch_0
    :cond_2
    return-object v1
.end method

.method public static final b(C)B
    .locals 1

    .line 1
    const/16 v0, 0x7e

    .line 2
    .line 3
    if-ge p0, v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lw41;->b:[B

    .line 6
    .line 7
    aget-byte p0, v0, p0

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public static c(II)I
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/2addr v0, p1

    .line 6
    div-int/lit16 v0, v0, 0xff

    .line 7
    .line 8
    invoke-static {p0, v0}, Lxl1;->g(II)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/util/Set;ZZ)Lww4;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "package:"

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {}, Lnc8;->p()Lww4;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "com.android.permission.GET_INSTALLED_APPS"

    .line 19
    .line 20
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    new-instance p2, Landroid/content/Intent;

    .line 29
    .line 30
    const-string v3, "miui.intent.action.APP_PERM_EDITOR"

    .line 31
    .line 32
    invoke-direct {p2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v3, "extra_pkgname"

    .line 36
    .line 37
    invoke-virtual {p2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p0}, Lww4;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    :cond_0
    new-instance p0, Landroid/content/Intent;

    .line 48
    .line 49
    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 50
    .line 51
    invoke-direct {p0, p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    if-eqz p3, :cond_1

    .line 61
    .line 62
    filled-new-array {v2}, [Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p1}, Lfl1;->x0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string p2, "permissionList"

    .line 71
    .line 72
    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    const-string p1, "isGetPermission"

    .line 76
    .line 77
    const/4 p2, 0x1

    .line 78
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    :cond_1
    invoke-virtual {v1, p0}, Lww4;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    new-instance p0, Landroid/content/Intent;

    .line 85
    .line 86
    const-string p1, "android.settings.MANAGE_APPLICATIONS_SETTINGS"

    .line 87
    .line 88
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, p0}, Lww4;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    new-instance p0, Landroid/content/Intent;

    .line 95
    .line 96
    const-string p1, "android.settings.APPLICATION_SETTINGS"

    .line 97
    .line 98
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, p0}, Lww4;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    new-instance p0, Landroid/content/Intent;

    .line 105
    .line 106
    const-string p1, "android.settings.SETTINGS"

    .line 107
    .line 108
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, p0}, Lww4;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    invoke-static {v1}, Lnc8;->h(Lww4;)Lww4;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    return-object p0
.end method

.method public static f(D)I
    .locals 2

    .line 1
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 2
    .line 3
    div-double/2addr p0, v0

    .line 4
    const-wide v0, 0x3f69a5c37387b719L    # 0.0031308

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    cmpg-double v0, p0, v0

    .line 10
    .line 11
    if-gtz v0, :cond_0

    .line 12
    .line 13
    const-wide v0, 0x4029d70a3d70a3d7L    # 12.92

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    mul-double/2addr p0, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-wide v0, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 26
    .line 27
    .line 28
    move-result-wide p0

    .line 29
    const-wide v0, 0x3ff0e147ae147ae1L    # 1.055

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    mul-double/2addr p0, v0

    .line 35
    const-wide v0, 0x3fac28f5c28f5c29L    # 0.055

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    sub-double/2addr p0, v0

    .line 41
    :goto_0
    const-wide v0, 0x406fe00000000000L    # 255.0

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    mul-double/2addr p0, v0

    .line 47
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    .line 48
    .line 49
    .line 50
    move-result-wide p0

    .line 51
    long-to-int p0, p0

    .line 52
    if-gez p0, :cond_1

    .line 53
    .line 54
    const/4 p0, 0x0

    .line 55
    return p0

    .line 56
    :cond_1
    const/16 p1, 0xff

    .line 57
    .line 58
    if-le p0, p1, :cond_2

    .line 59
    .line 60
    return p1

    .line 61
    :cond_2
    return p0
.end method

.method public static h(Ljava/io/File;Ljava/io/File;Lf27;Ljava/util/List;JLny6;Lh07;)Ld27;
    .locals 34

    .line 1
    move-wide/from16 v0, p4

    .line 2
    .line 3
    move-object/from16 v2, p7

    .line 4
    .line 5
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->isFile()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const/4 v4, 0x0

    .line 13
    if-eqz v3, :cond_e

    .line 14
    .line 15
    const-wide/16 v5, 0x0

    .line 16
    .line 17
    cmp-long v3, v0, v5

    .line 18
    .line 19
    if-ltz v3, :cond_d

    .line 20
    .line 21
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    if-eqz v7, :cond_1

    .line 26
    .line 27
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    if-eqz v7, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "Tar extraction target is not a directory: "

    .line 39
    .line 40
    invoke-static {v1, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return-object v4

    .line 48
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->mkdirs()Z

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    if-eqz v7, :cond_c

    .line 53
    .line 54
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    .line 55
    .line 56
    .line 57
    move-result-wide v13

    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    if-gtz v3, :cond_2

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    new-instance v3, Lg27;

    .line 64
    .line 65
    invoke-direct {v3, v2, v0, v1}, Lg27;-><init>(Lh07;J)V

    .line 66
    .line 67
    .line 68
    move-object v8, v3

    .line 69
    goto :goto_2

    .line 70
    :cond_3
    :goto_1
    move-object v8, v2

    .line 71
    :goto_2
    new-instance v0, Lw17;

    .line 72
    .line 73
    invoke-direct {v0, v13, v14}, Lw17;-><init>(J)V

    .line 74
    .line 75
    .line 76
    move-object/from16 v1, p6

    .line 77
    .line 78
    invoke-static {v8, v1, v0}, Lx13;->Q(Lh07;Lny6;Lrt3;)Lvq;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sget-object v9, Li07;->Extract:Li07;

    .line 83
    .line 84
    sget-object v10, Ll07;->Extraction:Ll07;

    .line 85
    .line 86
    sget-object v18, Lm07;->Started:Lm07;

    .line 87
    .line 88
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 89
    .line 90
    .line 91
    move-result-object v22

    .line 92
    const/16 v23, 0x18

    .line 93
    .line 94
    const/16 v19, 0x0

    .line 95
    .line 96
    const-wide/16 v20, 0x0

    .line 97
    .line 98
    move-object v15, v8

    .line 99
    move-object/from16 v16, v9

    .line 100
    .line 101
    move-object/from16 v17, v10

    .line 102
    .line 103
    invoke-static/range {v15 .. v23}, Lx13;->l(Lh07;Li07;Ll07;Lm07;Ljava/lang/String;JLjava/lang/Long;I)V

    .line 104
    .line 105
    .line 106
    const/16 v1, 0x3e

    .line 107
    .line 108
    const/4 v2, 0x1

    .line 109
    and-int/2addr v1, v2

    .line 110
    if-eqz v1, :cond_4

    .line 111
    .line 112
    :try_start_0
    sget-object v1, Lf27;->Basic:Lf27;

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_4
    move-object/from16 v1, p2

    .line 116
    .line 117
    :goto_3
    const/16 v3, 0x3e

    .line 118
    .line 119
    and-int/lit8 v3, v3, 0x10

    .line 120
    .line 121
    if-eqz v3, :cond_5

    .line 122
    .line 123
    sget-object v3, Llv1;->e:Ll0;

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_5
    move-object v3, v4

    .line 127
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    const-wide/16 v11, 0x7d0

    .line 134
    .line 135
    cmp-long v3, v11, v5

    .line 136
    .line 137
    if-ltz v3, :cond_b

    .line 138
    .line 139
    sget-object v3, La17;->a:[I

    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    aget v1, v3, v1

    .line 146
    .line 147
    if-eq v1, v2, :cond_8

    .line 148
    .line 149
    const/4 v2, 0x2

    .line 150
    if-eq v1, v2, :cond_7

    .line 151
    .line 152
    const/4 v2, 0x3

    .line 153
    if-ne v1, v2, :cond_6

    .line 154
    .line 155
    new-instance v1, Laz6;

    .line 156
    .line 157
    const/16 v2, 0x180

    .line 158
    .line 159
    invoke-direct {v1, v2}, Laz6;-><init>(I)V

    .line 160
    .line 161
    .line 162
    goto :goto_5

    .line 163
    :cond_6
    new-instance v0, Lmn5;

    .line 164
    .line 165
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 166
    .line 167
    .line 168
    throw v0

    .line 169
    :cond_7
    new-instance v1, Laz6;

    .line 170
    .line 171
    const/16 v2, 0x1d4

    .line 172
    .line 173
    invoke-direct {v1, v2}, Laz6;-><init>(I)V

    .line 174
    .line 175
    .line 176
    goto :goto_5

    .line 177
    :cond_8
    new-instance v1, Laz6;

    .line 178
    .line 179
    const/16 v2, 0x1ff

    .line 180
    .line 181
    invoke-direct {v1, v2}, Laz6;-><init>(I)V

    .line 182
    .line 183
    .line 184
    :goto_5
    invoke-static {v1}, Lw13;->s(Laz6;)I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-eqz p3, :cond_a

    .line 189
    .line 190
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->isEmpty()Z

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    if-nez v2, :cond_9

    .line 195
    .line 196
    move-object/from16 v2, p3

    .line 197
    .line 198
    goto :goto_6

    .line 199
    :cond_9
    move-object v2, v4

    .line 200
    :goto_6
    if-eqz v2, :cond_a

    .line 201
    .line 202
    const/4 v3, 0x0

    .line 203
    new-array v3, v3, [Ljava/lang/String;

    .line 204
    .line 205
    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    move-object v4, v2

    .line 210
    check-cast v4, [Ljava/lang/String;

    .line 211
    .line 212
    goto :goto_7

    .line 213
    :catch_0
    move-exception v0

    .line 214
    goto/16 :goto_a

    .line 215
    .line 216
    :cond_a
    :goto_7
    const/high16 v2, 0x10000000

    .line 217
    .line 218
    move-object/from16 v3, p0

    .line 219
    .line 220
    invoke-static {v3, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 221
    .line 222
    .line 223
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :try_start_1
    sget-object v5, Lcom/swiftapps/sba/SbaSwiftTarNative;->a:Lcom/swiftapps/sba/SbaSwiftTarNative;

    .line 225
    .line 226
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    .line 239
    .line 240
    invoke-static {v5}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    .line 241
    .line 242
    .line 243
    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    :try_start_2
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFd()I

    .line 245
    .line 246
    .line 247
    move-result v7

    .line 248
    move-object/from16 p6, v0

    .line 249
    .line 250
    move/from16 p4, v1

    .line 251
    .line 252
    move-object/from16 p5, v4

    .line 253
    .line 254
    move-object/from16 p3, v6

    .line 255
    .line 256
    move/from16 p7, v7

    .line 257
    .line 258
    move-wide/from16 p1, v13

    .line 259
    .line 260
    invoke-static/range {p1 .. p7}, Lcom/swiftapps/sba/SbaSwiftTarNative;->a(JLjava/lang/String;I[Ljava/lang/String;Lvq;I)[J

    .line 261
    .line 262
    .line 263
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 264
    move-wide/from16 v13, p1

    .line 265
    .line 266
    :try_start_3
    invoke-interface {v5}, Ljava/io/Closeable;->close()V

    .line 267
    .line 268
    .line 269
    invoke-static {v0}, Lvm4;->k([J)Lv17;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    new-instance v15, Ld27;

    .line 274
    .line 275
    iget-wide v4, v0, Lv17;->a:J

    .line 276
    .line 277
    iget-wide v6, v0, Lv17;->b:J

    .line 278
    .line 279
    iget-wide v11, v0, Lv17;->c:J

    .line 280
    .line 281
    move-wide/from16 v16, v4

    .line 282
    .line 283
    iget-wide v3, v0, Lv17;->d:J

    .line 284
    .line 285
    move-wide/from16 v22, v3

    .line 286
    .line 287
    iget-wide v3, v0, Lv17;->e:J

    .line 288
    .line 289
    move-wide/from16 v24, v3

    .line 290
    .line 291
    iget-wide v3, v0, Lv17;->f:J

    .line 292
    .line 293
    move-wide/from16 v26, v3

    .line 294
    .line 295
    iget-wide v3, v0, Lv17;->g:J

    .line 296
    .line 297
    move-wide/from16 v28, v3

    .line 298
    .line 299
    iget-wide v3, v0, Lv17;->h:J

    .line 300
    .line 301
    iget-wide v0, v0, Lv17;->i:J

    .line 302
    .line 303
    move-wide/from16 v32, v0

    .line 304
    .line 305
    move-wide/from16 v30, v3

    .line 306
    .line 307
    move-wide/from16 v18, v6

    .line 308
    .line 309
    move-wide/from16 v20, v11

    .line 310
    .line 311
    invoke-direct/range {v15 .. v33}, Ld27;-><init>(JJJJJJJJJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 312
    .line 313
    .line 314
    move-object v0, v15

    .line 315
    :try_start_4
    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    .line 316
    .line 317
    .line 318
    sget-object v11, Lm07;->Completed:Lm07;

    .line 319
    .line 320
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 321
    .line 322
    .line 323
    move-result-object v15

    .line 324
    const/16 v16, 0x8

    .line 325
    .line 326
    const/4 v12, 0x0

    .line 327
    invoke-static/range {v8 .. v16}, Lx13;->l(Lh07;Li07;Ll07;Lm07;Ljava/lang/String;JLjava/lang/Long;I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 328
    .line 329
    .line 330
    return-object v0

    .line 331
    :goto_8
    move-object v1, v0

    .line 332
    goto :goto_9

    .line 333
    :catchall_0
    move-exception v0

    .line 334
    goto :goto_8

    .line 335
    :catchall_1
    move-exception v0

    .line 336
    move-object v1, v0

    .line 337
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 338
    :catchall_2
    move-exception v0

    .line 339
    :try_start_6
    invoke-static {v5, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 340
    .line 341
    .line 342
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 343
    :goto_9
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 344
    :catchall_3
    move-exception v0

    .line 345
    :try_start_8
    invoke-static {v2, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 346
    .line 347
    .line 348
    throw v0

    .line 349
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    const-string v1, "SBA progress update interval must be >= 0 ms: "

    .line 352
    .line 353
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 364
    .line 365
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    throw v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 373
    :goto_a
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    .line 378
    .line 379
    const-string v3, "Failed to extract tar file \'"

    .line 380
    .line 381
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    const-string v1, "\'"

    .line 388
    .line 389
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    invoke-static {v0, v1}, Lw13;->t(Ljava/io/IOException;Ljava/lang/String;)Lyy6;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    throw v0

    .line 401
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    const-string v1, "Failed to create tar extraction target: "

    .line 406
    .line 407
    invoke-static {v1, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 412
    .line 413
    .line 414
    return-object v4

    .line 415
    :cond_d
    const-string v2, "SBA tar progress update interval must be >= 0 ms: "

    .line 416
    .line 417
    invoke-static {v0, v1, v2}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 422
    .line 423
    .line 424
    return-object v4

    .line 425
    :cond_e
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    const-string v1, "Tar file does not exist: "

    .line 430
    .line 431
    invoke-static {v1, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 436
    .line 437
    .line 438
    return-object v4
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 1
    const-string v0, "\n"

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
    const-string v0, "<"

    .line 13
    .line 14
    const-string v2, ">"

    .line 15
    .line 16
    invoke-static {v0, p1, v2}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v3, "</"

    .line 21
    .line 22
    invoke-static {v3, p1, v2}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const/4 v2, 0x0

    .line 31
    move v4, v2

    .line 32
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    const/4 v6, 0x0

    .line 37
    if-eqz v5, :cond_7

    .line 38
    .line 39
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    check-cast v5, Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v5, v0, v2}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    if-eqz v7, :cond_1

    .line 50
    .line 51
    const/4 v4, 0x1

    .line 52
    :cond_1
    if-eqz v4, :cond_6

    .line 53
    .line 54
    new-instance v7, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v8, "name=\""

    .line 57
    .line 58
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v8, "\""

    .line 65
    .line 66
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-static {v5, v7, v2}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-eqz v7, :cond_6

    .line 78
    .line 79
    const-string v7, "<string"

    .line 80
    .line 81
    invoke-static {v5, v7, v2}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-eqz v7, :cond_2

    .line 86
    .line 87
    const-string p0, "\">"

    .line 88
    .line 89
    invoke-static {v5, p0, v3}, Ljq7;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    return-object p0

    .line 94
    :cond_2
    const-string v7, "<int"

    .line 95
    .line 96
    invoke-static {v5, v7, v2}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    if-eqz v7, :cond_6

    .line 101
    .line 102
    invoke-static {v5}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    const-string v9, " "

    .line 111
    .line 112
    filled-new-array {v9}, [Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    invoke-static {v7, v9, v1}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v9

    .line 128
    if-eqz v9, :cond_4

    .line 129
    .line 130
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    move-object v10, v9

    .line 135
    check-cast v10, Ljava/lang/String;

    .line 136
    .line 137
    const-string v11, "value="

    .line 138
    .line 139
    invoke-static {v10, v11, v2}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 140
    .line 141
    .line 142
    move-result v10

    .line 143
    if-eqz v10, :cond_3

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_4
    move-object v9, v6

    .line 147
    :goto_0
    check-cast v9, Ljava/lang/String;

    .line 148
    .line 149
    if-eqz v9, :cond_6

    .line 150
    .line 151
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    if-nez v7, :cond_5

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_5
    invoke-static {v9, v8, v8}, Ljq7;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    return-object p0

    .line 163
    :cond_6
    :goto_1
    invoke-static {v5, p1, v2}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    if-eqz v5, :cond_0

    .line 168
    .line 169
    :cond_7
    return-object v6
.end method

.method public static j(Ldd1;)Lh80;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v1, Lwi1;->a:[I

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    aget v1, v1, v2

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v4, 0x3

    .line 16
    const/4 v5, 0x0

    .line 17
    if-eq v1, v2, :cond_5

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    if-eq v1, v2, :cond_4

    .line 21
    .line 22
    if-eq v1, v4, :cond_3

    .line 23
    .line 24
    const/4 v2, 0x4

    .line 25
    if-eq v1, v2, :cond_0

    .line 26
    .line 27
    return-object v5

    .line 28
    :cond_0
    const/16 v1, 0x138d

    .line 29
    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sget-object v2, Lfd1;->HTTP:Lfd1;

    .line 35
    .line 36
    invoke-virtual {v2}, Lfd1;->getDefPort()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const/16 v6, 0x1f90

    .line 45
    .line 46
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    const/16 v7, 0x1f91

    .line 51
    .line 52
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    const/16 v8, 0x22b8

    .line 57
    .line 58
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    filled-new-array {v1, v2, v6, v7, v8}, [Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v1}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    new-instance v2, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    const-string v7, "remote.php/webdav"

    .line 84
    .line 85
    const-string v8, "remote.php/dav/files"

    .line 86
    .line 87
    const-string v9, "webdav"

    .line 88
    .line 89
    const-string v10, "dav"

    .line 90
    .line 91
    if-eqz v6, :cond_1

    .line 92
    .line 93
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    check-cast v6, Ljava/lang/Number;

    .line 98
    .line 99
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    sget-object v11, Lfd1;->HTTP:Lfd1;

    .line 104
    .line 105
    new-instance v12, Lxi1;

    .line 106
    .line 107
    invoke-direct {v12, v6, v11, v5}, Lxi1;-><init>(ILfd1;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    new-instance v13, Lxi1;

    .line 111
    .line 112
    invoke-direct {v13, v6, v11, v10}, Lxi1;-><init>(ILfd1;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    new-instance v10, Lxi1;

    .line 116
    .line 117
    invoke-direct {v10, v6, v11, v9}, Lxi1;-><init>(ILfd1;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    new-instance v9, Lxi1;

    .line 121
    .line 122
    invoke-direct {v9, v6, v11, v8}, Lxi1;-><init>(ILfd1;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    new-instance v8, Lxi1;

    .line 126
    .line 127
    invoke-direct {v8, v6, v11, v7}, Lxi1;-><init>(ILfd1;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    filled-new-array {v12, v13, v10, v9, v8}, [Lxi1;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    invoke-static {v6}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    invoke-static {v6, v2}, Lel1;->K0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_1
    const/16 v1, 0x138e

    .line 143
    .line 144
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    sget-object v6, Lfd1;->HTTPS:Lfd1;

    .line 149
    .line 150
    invoke-virtual {v6}, Lfd1;->getDefPort()I

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    const/16 v11, 0x20fb

    .line 159
    .line 160
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v11

    .line 164
    filled-new-array {v1, v6, v11}, [Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-static {v1}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    new-instance v6, Ljava/util/ArrayList;

    .line 173
    .line 174
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 182
    .line 183
    .line 184
    move-result v11

    .line 185
    if-eqz v11, :cond_2

    .line 186
    .line 187
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v11

    .line 191
    check-cast v11, Ljava/lang/Number;

    .line 192
    .line 193
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    .line 194
    .line 195
    .line 196
    move-result v11

    .line 197
    sget-object v12, Lfd1;->HTTPS:Lfd1;

    .line 198
    .line 199
    new-instance v13, Lxi1;

    .line 200
    .line 201
    invoke-direct {v13, v11, v12, v5}, Lxi1;-><init>(ILfd1;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    new-instance v14, Lxi1;

    .line 205
    .line 206
    invoke-direct {v14, v11, v12, v10}, Lxi1;-><init>(ILfd1;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    new-instance v15, Lxi1;

    .line 210
    .line 211
    invoke-direct {v15, v11, v12, v9}, Lxi1;-><init>(ILfd1;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    new-instance v5, Lxi1;

    .line 215
    .line 216
    invoke-direct {v5, v11, v12, v8}, Lxi1;-><init>(ILfd1;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    new-instance v3, Lxi1;

    .line 220
    .line 221
    invoke-direct {v3, v11, v12, v7}, Lxi1;-><init>(ILfd1;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    filled-new-array {v13, v14, v15, v5, v3}, [Lxi1;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    invoke-static {v3}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-static {v3, v6}, Lel1;->K0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 233
    .line 234
    .line 235
    const/4 v5, 0x0

    .line 236
    goto :goto_1

    .line 237
    :cond_2
    invoke-static {v2, v6}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    new-instance v2, Lh80;

    .line 242
    .line 243
    const/4 v3, 0x0

    .line 244
    invoke-direct {v2, v0, v1, v4, v3}, Lh80;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 245
    .line 246
    .line 247
    return-object v2

    .line 248
    :cond_3
    new-instance v1, Lh80;

    .line 249
    .line 250
    new-instance v2, Lxi1;

    .line 251
    .line 252
    sget-object v3, Lfd1;->FTP:Lfd1;

    .line 253
    .line 254
    invoke-virtual {v3}, Lfd1;->getDefPort()I

    .line 255
    .line 256
    .line 257
    move-result v5

    .line 258
    const/4 v6, 0x0

    .line 259
    invoke-direct {v2, v5, v3, v6}, Lxi1;-><init>(ILfd1;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    new-instance v5, Lxi1;

    .line 263
    .line 264
    const/16 v7, 0x7e5

    .line 265
    .line 266
    invoke-direct {v5, v7, v3, v6}, Lxi1;-><init>(ILfd1;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    new-instance v7, Lxi1;

    .line 270
    .line 271
    const/16 v8, 0x849

    .line 272
    .line 273
    invoke-direct {v7, v8, v3, v6}, Lxi1;-><init>(ILfd1;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    new-instance v8, Lxi1;

    .line 277
    .line 278
    const/16 v9, 0x834

    .line 279
    .line 280
    invoke-direct {v8, v9, v3, v6}, Lxi1;-><init>(ILfd1;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    new-instance v3, Lxi1;

    .line 284
    .line 285
    sget-object v9, Lfd1;->FTPS_EXPLICIT:Lfd1;

    .line 286
    .line 287
    invoke-virtual {v9}, Lfd1;->getDefPort()I

    .line 288
    .line 289
    .line 290
    move-result v10

    .line 291
    invoke-direct {v3, v10, v9, v6}, Lxi1;-><init>(ILfd1;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    new-instance v10, Lxi1;

    .line 295
    .line 296
    const/16 v11, 0x52ee

    .line 297
    .line 298
    invoke-direct {v10, v11, v9, v6}, Lxi1;-><init>(ILfd1;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    new-instance v11, Lxi1;

    .line 302
    .line 303
    const/16 v12, 0x5352

    .line 304
    .line 305
    invoke-direct {v11, v12, v9, v6}, Lxi1;-><init>(ILfd1;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    new-instance v12, Lxi1;

    .line 309
    .line 310
    const/16 v13, 0x53b6

    .line 311
    .line 312
    invoke-direct {v12, v13, v9, v6}, Lxi1;-><init>(ILfd1;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    new-instance v13, Lxi1;

    .line 316
    .line 317
    const/16 v14, 0x541a

    .line 318
    .line 319
    invoke-direct {v13, v14, v9, v6}, Lxi1;-><init>(ILfd1;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    new-instance v9, Lxi1;

    .line 323
    .line 324
    sget-object v14, Lfd1;->FTPS_IMPLICIT:Lfd1;

    .line 325
    .line 326
    invoke-virtual {v14}, Lfd1;->getDefPort()I

    .line 327
    .line 328
    .line 329
    move-result v15

    .line 330
    invoke-direct {v9, v15, v14, v6}, Lxi1;-><init>(ILfd1;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    new-instance v15, Lxi1;

    .line 334
    .line 335
    const/16 v4, 0x5302

    .line 336
    .line 337
    invoke-direct {v15, v4, v14, v6}, Lxi1;-><init>(ILfd1;Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    new-instance v4, Lxi1;

    .line 341
    .line 342
    move-object/from16 v16, v2

    .line 343
    .line 344
    const/16 v2, 0xbae

    .line 345
    .line 346
    invoke-direct {v4, v2, v14, v6}, Lxi1;-><init>(ILfd1;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    move-object/from16 v20, v3

    .line 350
    .line 351
    move-object/from16 v27, v4

    .line 352
    .line 353
    move-object/from16 v17, v5

    .line 354
    .line 355
    move-object/from16 v18, v7

    .line 356
    .line 357
    move-object/from16 v19, v8

    .line 358
    .line 359
    move-object/from16 v25, v9

    .line 360
    .line 361
    move-object/from16 v21, v10

    .line 362
    .line 363
    move-object/from16 v22, v11

    .line 364
    .line 365
    move-object/from16 v23, v12

    .line 366
    .line 367
    move-object/from16 v24, v13

    .line 368
    .line 369
    move-object/from16 v26, v15

    .line 370
    .line 371
    filled-new-array/range {v16 .. v27}, [Lxi1;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    invoke-static {v2}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    const/4 v3, 0x0

    .line 380
    const/4 v4, 0x3

    .line 381
    invoke-direct {v1, v0, v2, v4, v3}, Lh80;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 382
    .line 383
    .line 384
    return-object v1

    .line 385
    :cond_4
    move-object v6, v5

    .line 386
    new-instance v1, Lh80;

    .line 387
    .line 388
    new-instance v2, Lxi1;

    .line 389
    .line 390
    sget-object v3, Lfd1;->SFTP:Lfd1;

    .line 391
    .line 392
    invoke-virtual {v3}, Lfd1;->getDefPort()I

    .line 393
    .line 394
    .line 395
    move-result v4

    .line 396
    invoke-direct {v2, v4, v3, v6}, Lxi1;-><init>(ILfd1;Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    new-instance v4, Lxi1;

    .line 400
    .line 401
    const/16 v5, 0x8ae

    .line 402
    .line 403
    invoke-direct {v4, v5, v3, v6}, Lxi1;-><init>(ILfd1;Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    filled-new-array {v2, v4}, [Lxi1;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    invoke-static {v2}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    const/4 v3, 0x0

    .line 415
    const/4 v4, 0x3

    .line 416
    invoke-direct {v1, v0, v2, v4, v3}, Lh80;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 417
    .line 418
    .line 419
    return-object v1

    .line 420
    :cond_5
    move-object v6, v5

    .line 421
    new-instance v1, Lh80;

    .line 422
    .line 423
    new-instance v7, Lxi1;

    .line 424
    .line 425
    sget-object v2, Lfd1;->SMB:Lfd1;

    .line 426
    .line 427
    invoke-virtual {v2}, Lfd1;->getDefPort()I

    .line 428
    .line 429
    .line 430
    move-result v3

    .line 431
    invoke-direct {v7, v3, v2, v6}, Lxi1;-><init>(ILfd1;Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    new-instance v8, Lxi1;

    .line 435
    .line 436
    const/16 v3, 0x5a5

    .line 437
    .line 438
    invoke-direct {v8, v3, v2, v6}, Lxi1;-><init>(ILfd1;Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    new-instance v9, Lxi1;

    .line 442
    .line 443
    const/16 v3, 0x5a6

    .line 444
    .line 445
    invoke-direct {v9, v3, v2, v6}, Lxi1;-><init>(ILfd1;Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    new-instance v10, Lxi1;

    .line 449
    .line 450
    const/16 v3, 0x5f82

    .line 451
    .line 452
    invoke-direct {v10, v3, v2, v6}, Lxi1;-><init>(ILfd1;Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    new-instance v11, Lxi1;

    .line 456
    .line 457
    const/16 v3, 0x5f83

    .line 458
    .line 459
    invoke-direct {v11, v3, v2, v6}, Lxi1;-><init>(ILfd1;Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    new-instance v12, Lxi1;

    .line 463
    .line 464
    const/16 v3, 0x5f84

    .line 465
    .line 466
    invoke-direct {v12, v3, v2, v6}, Lxi1;-><init>(ILfd1;Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    filled-new-array/range {v7 .. v12}, [Lxi1;

    .line 470
    .line 471
    .line 472
    move-result-object v2

    .line 473
    invoke-static {v2}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 474
    .line 475
    .line 476
    move-result-object v2

    .line 477
    const/4 v3, 0x0

    .line 478
    const/4 v4, 0x3

    .line 479
    invoke-direct {v1, v0, v2, v4, v3}, Lh80;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 480
    .line 481
    .line 482
    return-object v1
.end method

.method public static k(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/Class;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Ljava/lang/Class;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .line 13
    .line 14
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lz85;->k(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :cond_1
    const/4 p0, 0x0

    .line 35
    return-object p0

    .line 36
    :cond_2
    const-class p0, Ljava/lang/Object;

    .line 37
    .line 38
    return-object p0
.end method

.method public static l(Ljava/lang/reflect/ParameterizedType;)[Ljava/lang/Class;
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length v0, p0

    .line 6
    new-array v0, v0, [Ljava/lang/Class;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    array-length v2, p0

    .line 10
    if-ge v1, v2, :cond_0

    .line 11
    .line 12
    aget-object v2, p0, v1

    .line 13
    .line 14
    invoke-static {v2}, Lz85;->k(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    aput-object v2, v0, v1

    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-object v0
.end method

.method public static m(ILandroid/content/Context;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Ljm1;->T(ILandroid/content/Context;Ljava/lang/String;)Landroid/util/TypedValue;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p1, p0}, Lz85;->C(Landroid/content/Context;Landroid/util/TypedValue;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static n(Landroid/content/Context;I)Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Ljm1;->P(Landroid/content/res/Resources$Theme;I)Landroid/util/TypedValue;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-static {p0, p1}, Lz85;->C(Landroid/content/Context;Landroid/util/TypedValue;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method

.method public static o(II)I
    .locals 7

    .line 1
    new-instance v0, Lb34;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lb34;-><init>(I)V

    .line 4
    .line 5
    .line 6
    int-to-double v5, p1

    .line 7
    iget-wide v1, v0, Lb34;->a:D

    .line 8
    .line 9
    iget-wide v3, v0, Lb34;->b:D

    .line 10
    .line 11
    invoke-static/range {v1 .. v6}, Ly13;->F(DDD)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-virtual {v0, p0}, Lb34;->a(I)V

    .line 16
    .line 17
    .line 18
    iget p0, v0, Lb34;->d:I

    .line 19
    .line 20
    return p0
.end method

.method public static p(Landroid/content/Context;I)Lvl1;
    .locals 3

    .line 1
    const v0, 0x7f0402f5

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-static {p0, v0, v1}, Ljm1;->Q(Landroid/content/Context;IZ)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/16 v0, 0x5a

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    new-instance p0, Lvl1;

    .line 14
    .line 15
    const/16 v1, 0x28

    .line 16
    .line 17
    invoke-static {p1, v1}, Lz85;->o(II)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/16 v2, 0x64

    .line 22
    .line 23
    invoke-static {p1, v2}, Lz85;->o(II)I

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v0}, Lz85;->o(II)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/16 v2, 0xa

    .line 31
    .line 32
    invoke-static {p1, v2}, Lz85;->o(II)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-direct {p0, v1, v0, p1}, Lvl1;-><init>(III)V

    .line 37
    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_0
    new-instance p0, Lvl1;

    .line 41
    .line 42
    const/16 v1, 0x50

    .line 43
    .line 44
    invoke-static {p1, v1}, Lz85;->o(II)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const/16 v2, 0x14

    .line 49
    .line 50
    invoke-static {p1, v2}, Lz85;->o(II)I

    .line 51
    .line 52
    .line 53
    const/16 v2, 0x1e

    .line 54
    .line 55
    invoke-static {p1, v2}, Lz85;->o(II)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-static {p1, v0}, Lz85;->o(II)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    invoke-direct {p0, v1, v2, p1}, Lvl1;-><init>(III)V

    .line 64
    .line 65
    .line 66
    return-object p0
.end method

.method public static q(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Ljm1;->P(Landroid/content/res/Resources$Theme;I)Landroid/util/TypedValue;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v0, p1, Landroid/util/TypedValue;->resourceId:I

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-static {p0, v0}, Lzh8;->q(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_1
    iget p0, p1, Landroid/util/TypedValue;->data:I

    .line 22
    .line 23
    if-eqz p0, :cond_2

    .line 24
    .line 25
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method public static r()Lxp1;
    .locals 6

    .line 1
    const-string v0, "compression_level_app_data"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    :try_start_0
    sget-object v3, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v0, "prefs"

    .line 15
    .line 16
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :catch_0
    :goto_0
    sget-object v0, Lxp1;->Companion:Lwp1;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lwp1;->a()[Lxp1;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v3, 0x0

    .line 30
    :goto_1
    const/4 v4, 0x2

    .line 31
    if-ge v3, v4, :cond_2

    .line 32
    .line 33
    aget-object v4, v0, v3

    .line 34
    .line 35
    invoke-virtual {v4}, Lxp1;->getLevel()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-ne v5, v2, :cond_1

    .line 40
    .line 41
    move-object v1, v4

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    :goto_2
    if-nez v1, :cond_3

    .line 47
    .line 48
    sget-object v0, Lxp1;->Companion:Lwp1;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lxp1;->access$getDEFAULT$cp()Lxp1;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    :cond_3
    return-object v1
.end method

.method public static s()Lxp1;
    .locals 6

    .line 1
    const-string v0, "compression_level_msgs"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    :try_start_0
    sget-object v3, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v0, "prefs"

    .line 15
    .line 16
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :catch_0
    :goto_0
    sget-object v0, Lxp1;->Companion:Lwp1;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lwp1;->a()[Lxp1;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v3, 0x0

    .line 30
    :goto_1
    const/4 v4, 0x2

    .line 31
    if-ge v3, v4, :cond_2

    .line 32
    .line 33
    aget-object v4, v0, v3

    .line 34
    .line 35
    invoke-virtual {v4}, Lxp1;->getLevel()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-ne v5, v2, :cond_1

    .line 40
    .line 41
    move-object v1, v4

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    :goto_2
    if-nez v1, :cond_3

    .line 47
    .line 48
    sget-object v0, Lxp1;->Companion:Lwp1;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lxp1;->access$getDEFAULT$cp()Lxp1;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    :cond_3
    return-object v1
.end method

.method public static final t(Lfu4;)Lxt4;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Lfu4;->getLifecycle()Lhu4;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lhu4;->a:Lfu;

    .line 12
    .line 13
    :goto_0
    iget-object v1, v0, Lfu;->a:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lxt4;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_0
    new-instance v1, Lxt4;

    .line 27
    .line 28
    invoke-static {}, Lzm5;->a()Lfs7;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    sget-object v3, Lcn2;->a:Lrf2;

    .line 33
    .line 34
    sget-object v3, Li55;->a:Lr24;

    .line 35
    .line 36
    iget-object v3, v3, Lr24;->e:Lr24;

    .line 37
    .line 38
    invoke-static {v2, v3}, Lod2;->u(Lmx1;Lox1;)Lox1;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-direct {v1, p0, v2}, Lxt4;-><init>(Lhu4;Lox1;)V

    .line 43
    .line 44
    .line 45
    iget-object v2, v0, Lfu;->a:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 48
    .line 49
    :cond_1
    const/4 v3, 0x0

    .line 50
    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_2

    .line 55
    .line 56
    sget-object p0, Lcn2;->a:Lrf2;

    .line 57
    .line 58
    sget-object p0, Li55;->a:Lr24;

    .line 59
    .line 60
    iget-object p0, p0, Lr24;->e:Lr24;

    .line 61
    .line 62
    new-instance v0, La11;

    .line 63
    .line 64
    invoke-direct {v0, v1, v3}, La11;-><init>(Lxt4;Ljv1;)V

    .line 65
    .line 66
    .line 67
    const/4 v2, 0x2

    .line 68
    invoke-static {v1, p0, v0, v2}, Ll73;->v(Lxx1;Lox1;Lqt3;I)Lbl7;

    .line 69
    .line 70
    .line 71
    return-object v1

    .line 72
    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    if-eqz v3, :cond_1

    .line 77
    .line 78
    goto :goto_0
.end method

.method public static u()Ljava/lang/Integer;
    .locals 4

    .line 1
    const-string v0, "max_sms_backups"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    :try_start_0
    sget-object v3, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v0, "prefs"

    .line 15
    .line 16
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :catch_0
    :goto_0
    if-lez v2, :cond_1

    .line 21
    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :cond_1
    return-object v1
.end method

.method public static v(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v0, 0x0

    .line 12
    aget-char v1, p0, v0

    .line 13
    .line 14
    array-length v2, p0

    .line 15
    const/4 v3, 0x2

    .line 16
    if-ge v2, v3, :cond_0

    .line 17
    .line 18
    :goto_0
    move v2, v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v2, 0x1

    .line 28
    aget-char v2, p0, v2

    .line 29
    .line 30
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    :goto_1
    if-nez v2, :cond_2

    .line 35
    .line 36
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    aput-char v1, p0, v0

    .line 41
    .line 42
    :cond_2
    new-instance v0, Ljava/lang/String;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    .line 45
    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_3
    return-object p0
.end method

.method public static w()Z
    .locals 6

    .line 1
    const-string v0, "prefs"

    .line 2
    .line 3
    const-string v1, "backup_app_cache"

    .line 4
    .line 5
    const-string v2, "KEY_BACKUP_APP_CACHE"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    :try_start_0
    sget-object v5, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 10
    .line 11
    if-eqz v5, :cond_0

    .line 12
    .line 13
    invoke-interface {v5, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :catch_0
    :goto_0
    :try_start_1
    sget-object v2, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v2, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v3
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 35
    :catch_1
    :goto_1
    return v4
.end method

.method public static x(FII)I
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    mul-float/2addr v0, p0

    .line 7
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-static {p2, p0}, Lxl1;->g(II)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-static {p0, p1}, Lxl1;->e(II)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public static y(I)D
    .locals 6

    .line 1
    int-to-double v0, p0

    .line 2
    const-wide v2, 0x406fe00000000000L    # 255.0

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    div-double/2addr v0, v2

    .line 8
    const-wide v2, 0x3fa4b5daa07d970dL    # 0.040449936

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    cmpg-double p0, v0, v2

    .line 14
    .line 15
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 16
    .line 17
    if-gtz p0, :cond_0

    .line 18
    .line 19
    const-wide v4, 0x4029d70a3d70a3d7L    # 12.92

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    div-double/2addr v0, v4

    .line 25
    :goto_0
    mul-double/2addr v0, v2

    .line 26
    return-wide v0

    .line 27
    :cond_0
    const-wide v4, 0x3fac28f5c28f5c29L    # 0.055

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    add-double/2addr v0, v4

    .line 33
    const-wide v4, 0x3ff0e147ae147ae1L    # 1.055

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    div-double/2addr v0, v4

    .line 39
    const-wide v4, 0x4003333333333333L    # 2.4

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    goto :goto_0
.end method

.method public static z(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const/high16 v2, 0x10000000

    .line 12
    .line 13
    :try_start_0
    invoke-static {p0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 14
    .line 15
    .line 16
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :try_start_1
    sget-object v3, Lcom/swiftapps/sba/SbaSwiftTarNative;->a:Lcom/swiftapps/sba/SbaSwiftTarNative;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {v3, v0, v1}, Lcom/swiftapps/sba/SbaSwiftTarNative;->d(Ljava/io/FileDescriptor;J)[Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    .line 31
    .line 32
    array-length v3, v0

    .line 33
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    .line 35
    .line 36
    array-length v3, v0

    .line 37
    const/4 v4, 0x0

    .line 38
    :goto_0
    if-ge v4, v3, :cond_0

    .line 39
    .line 40
    aget-object v5, v0, v4

    .line 41
    .line 42
    invoke-static {v5}, Lz85;->G(Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;)Lz17;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    .line 49
    add-int/lit8 v4, v4, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    :try_start_2
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 55
    .line 56
    .line 57
    return-object v1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    goto :goto_2

    .line 60
    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 61
    :catchall_1
    move-exception v1

    .line 62
    :try_start_4
    invoke-static {v2, v0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 66
    :goto_2
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v2, "Failed to list tar file \'"

    .line 73
    .line 74
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p0, "\'"

    .line 81
    .line 82
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-static {v0, p0}, Lw13;->t(Ljava/io/IOException;Ljava/lang/String;)Lyy6;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    throw p0

    .line 94
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    const-string v0, "Tar file does not exist: "

    .line 99
    .line 100
    invoke-static {v0, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    const/4 p0, 0x0

    .line 108
    return-object p0
.end method


# virtual methods
.method public abstract e([BII)Ljava/lang/String;
.end method

.method public abstract g(Ljava/lang/String;[BII)I
.end method
