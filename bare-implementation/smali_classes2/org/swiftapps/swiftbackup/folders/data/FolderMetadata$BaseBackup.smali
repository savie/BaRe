.class public final Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;
.super Lvm3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BaseBackup"
.end annotation


# static fields
.field public static final Companion:Lorg/swiftapps/swiftbackup/folders/data/b;


# instance fields
.field private backupLink:Ljava/lang/String;

.field private backupSize:Ljava/lang/Long;

.field private transient isBaseBackup:Z

.field private manifestLink:Ljava/lang/String;

.field private manifestSize:Ljava/lang/Long;

.field private originalSize:Ljava/lang/Long;

.field private timestamp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/swiftapps/swiftbackup/folders/data/b;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->Companion:Lorg/swiftapps/swiftbackup/folders/data/b;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 43
    const/16 v8, 0x7f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->backupLink:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->backupSize:Ljava/lang/Long;

    .line 47
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->originalSize:Ljava/lang/Long;

    .line 48
    iput-object p4, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->manifestLink:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->manifestSize:Ljava/lang/Long;

    .line 50
    iput-object p6, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->timestamp:Ljava/lang/String;

    .line 51
    iput-boolean p7, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->isBaseBackup:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    .line 1
    and-int/lit8 p9, p8, 0x1

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    if-eqz p9, :cond_0

    .line 6
    .line 7
    move-object p1, v0

    .line 8
    :cond_0
    and-int/lit8 p9, p8, 0x2

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz p9, :cond_1

    .line 12
    .line 13
    move-object p2, v1

    .line 14
    :cond_1
    and-int/lit8 p9, p8, 0x4

    .line 15
    .line 16
    if-eqz p9, :cond_2

    .line 17
    .line 18
    move-object p3, v1

    .line 19
    :cond_2
    and-int/lit8 p9, p8, 0x8

    .line 20
    .line 21
    if-eqz p9, :cond_3

    .line 22
    .line 23
    move-object p4, v0

    .line 24
    :cond_3
    and-int/lit8 p9, p8, 0x10

    .line 25
    .line 26
    if-eqz p9, :cond_4

    .line 27
    .line 28
    move-object p5, v1

    .line 29
    :cond_4
    and-int/lit8 p9, p8, 0x20

    .line 30
    .line 31
    if-eqz p9, :cond_5

    .line 32
    .line 33
    move-object p6, v0

    .line 34
    :cond_5
    and-int/lit8 p8, p8, 0x40

    .line 35
    .line 36
    if-eqz p8, :cond_6

    .line 37
    .line 38
    const/4 p7, 0x1

    .line 39
    :cond_6
    invoke-direct/range {p0 .. p7}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;
    .locals 0

    .line 1
    and-int/lit8 p9, p8, 0x1

    .line 2
    .line 3
    if-eqz p9, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->backupLink:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p9, p8, 0x2

    .line 8
    .line 9
    if-eqz p9, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->backupSize:Ljava/lang/Long;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p9, p8, 0x4

    .line 14
    .line 15
    if-eqz p9, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->originalSize:Ljava/lang/Long;

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p9, p8, 0x8

    .line 20
    .line 21
    if-eqz p9, :cond_3

    .line 22
    .line 23
    iget-object p4, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->manifestLink:Ljava/lang/String;

    .line 24
    .line 25
    :cond_3
    and-int/lit8 p9, p8, 0x10

    .line 26
    .line 27
    if-eqz p9, :cond_4

    .line 28
    .line 29
    iget-object p5, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->manifestSize:Ljava/lang/Long;

    .line 30
    .line 31
    :cond_4
    and-int/lit8 p9, p8, 0x20

    .line 32
    .line 33
    if-eqz p9, :cond_5

    .line 34
    .line 35
    iget-object p6, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->timestamp:Ljava/lang/String;

    .line 36
    .line 37
    :cond_5
    and-int/lit8 p8, p8, 0x40

    .line 38
    .line 39
    if-eqz p8, :cond_6

    .line 40
    .line 41
    iget-boolean p7, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->isBaseBackup:Z

    .line 42
    .line 43
    :cond_6
    move-object p8, p6

    .line 44
    move p9, p7

    .line 45
    move-object p6, p4

    .line 46
    move-object p7, p5

    .line 47
    move-object p4, p2

    .line 48
    move-object p5, p3

    .line 49
    move-object p2, p0

    .line 50
    move-object p3, p1

    .line 51
    invoke-virtual/range {p2 .. p9}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->copy(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Z)Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->backupLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->backupSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->originalSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->manifestLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component5()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->manifestSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->timestamp:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component7()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->isBaseBackup:Z

    .line 2
    .line 3
    return p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Z)Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;

    .line 11
    .line 12
    invoke-direct/range {p0 .. p7}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
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
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->backupLink:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->backupLink:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->backupSize:Ljava/lang/Long;

    .line 25
    .line 26
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->backupSize:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->originalSize:Ljava/lang/Long;

    .line 36
    .line 37
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->originalSize:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->manifestLink:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->manifestLink:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->manifestSize:Ljava/lang/Long;

    .line 58
    .line 59
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->manifestSize:Ljava/lang/Long;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->timestamp:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->timestamp:Ljava/lang/String;

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
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->isBaseBackup:Z

    .line 80
    .line 81
    iget-boolean p1, p1, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->isBaseBackup:Z

    .line 82
    .line 83
    if-eq p0, p1, :cond_8

    .line 84
    .line 85
    return v2

    .line 86
    :cond_8
    return v0
.end method

.method public getBackupLink()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->backupLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getBackupSize()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->backupSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic getCopy()Ljl0;
    .locals 0

    .line 17
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->getCopy()Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;

    move-result-object p0

    return-object p0
.end method

.method public getCopy()Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;
    .locals 10
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    const/16 v8, 0x7f

    .line 2
    .line 3
    const/4 v9, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v7, 0x0

    .line 11
    move-object v0, p0

    .line 12
    invoke-static/range {v0 .. v9}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->copy$default(Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public getManifestLink()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->manifestLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getManifestSize()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->manifestSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public getOriginalSize()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->originalSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->timestamp:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->backupLink:Ljava/lang/String;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->backupSize:Ljava/lang/Long;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    move v2, v3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    :goto_0
    add-int/2addr v0, v2

    .line 22
    mul-int/2addr v0, v1

    .line 23
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->originalSize:Ljava/lang/Long;

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    move v2, v3

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    :goto_1
    add-int/2addr v0, v2

    .line 34
    mul-int/2addr v0, v1

    .line 35
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->manifestLink:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->manifestSize:Ljava/lang/Long;

    .line 42
    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->timestamp:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->isBaseBackup:Z

    .line 59
    .line 60
    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    add-int/2addr p0, v0

    .line 65
    return p0
.end method

.method public isBaseBackup()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->isBaseBackup:Z

    .line 2
    .line 3
    return p0
.end method

.method public setBackupLink(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->backupLink:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public setBackupSize(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->backupSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setBaseBackup(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->isBaseBackup:Z

    .line 2
    .line 3
    return-void
.end method

.method public setManifestLink(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->manifestLink:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public setManifestSize(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->manifestSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setOriginalSize(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->originalSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->timestamp:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->backupLink:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->backupSize:Ljava/lang/Long;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->originalSize:Ljava/lang/Long;

    .line 6
    .line 7
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->manifestLink:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->manifestSize:Ljava/lang/Long;

    .line 10
    .line 11
    iget-object v5, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->timestamp:Ljava/lang/String;

    .line 12
    .line 13
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->isBaseBackup:Z

    .line 14
    .line 15
    new-instance v6, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v7, "BaseBackup(backupLink="

    .line 18
    .line 19
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, ", backupSize="

    .line 26
    .line 27
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, ", originalSize="

    .line 34
    .line 35
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v0, ", manifestLink="

    .line 42
    .line 43
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v0, ", manifestSize="

    .line 50
    .line 51
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, ", timestamp="

    .line 58
    .line 59
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v0, ", isBaseBackup="

    .line 66
    .line 67
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v0, ")"

    .line 71
    .line 72
    invoke-static {v6, p0, v0}, Ldj7;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0
.end method
