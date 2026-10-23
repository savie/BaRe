.class public final Lorg/swiftapps/swiftbackup/folders/data/FolderItem;
.super Leh3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/swiftapps/swiftbackup/folders/data/FolderItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lnm3;

.field public static final DISPLAY_NAME_MAX_CHARACTERS:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "FolderItem"


# instance fields
.field private final displayName:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final setupCreationTime:J

.field private final sourceFolder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnm3;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->Companion:Lnm3;

    .line 7
    .line 8
    new-instance v0, Lb90;

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    invoke-direct {v0, v1}, Lb90;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 28
    const/16 v6, 0xf

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->id:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->displayName:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->sourceFolder:Ljava/lang/String;

    .line 33
    iput-wide p4, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->setupCreationTime:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    if-eqz p7, :cond_0

    .line 6
    .line 7
    move-object p1, v0

    .line 8
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 9
    .line 10
    if-eqz p7, :cond_1

    .line 11
    .line 12
    move-object p2, v0

    .line 13
    :cond_1
    and-int/lit8 p7, p6, 0x4

    .line 14
    .line 15
    if-eqz p7, :cond_2

    .line 16
    .line 17
    move-object p3, v0

    .line 18
    :cond_2
    and-int/lit8 p6, p6, 0x8

    .line 19
    .line 20
    if-eqz p6, :cond_3

    .line 21
    .line 22
    const-wide/16 p4, 0x0

    .line 23
    .line 24
    :cond_3
    invoke-direct/range {p0 .. p5}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)Lorg/swiftapps/swiftbackup/folders/data/FolderItem;
    .locals 0

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->id:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 8
    .line 9
    if-eqz p7, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->displayName:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p7, p6, 0x4

    .line 14
    .line 15
    if-eqz p7, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->sourceFolder:Ljava/lang/String;

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p6, p6, 0x8

    .line 20
    .line 21
    if-eqz p6, :cond_3

    .line 22
    .line 23
    iget-wide p4, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->setupCreationTime:J

    .line 24
    .line 25
    :cond_3
    move-wide p6, p4

    .line 26
    move-object p4, p2

    .line 27
    move-object p5, p3

    .line 28
    move-object p2, p0

    .line 29
    move-object p3, p1

    .line 30
    invoke-virtual/range {p2 .. p7}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->displayName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->sourceFolder:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component4()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->setupCreationTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lorg/swiftapps/swiftbackup/folders/data/FolderItem;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 11
    .line 12
    invoke-direct/range {p0 .. p5}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->id:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->id:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->displayName:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->displayName:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->sourceFolder:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->sourceFolder:Ljava/lang/String;

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
    iget-wide v3, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->setupCreationTime:J

    .line 47
    .line 48
    iget-wide p0, p1, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->setupCreationTime:J

    .line 49
    .line 50
    cmp-long p0, v3, p0

    .line 51
    .line 52
    if-eqz p0, :cond_5

    .line 53
    .line 54
    return v2

    .line 55
    :cond_5
    return v0
.end method

.method public final fetchCloudBackup()Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;
    .locals 2

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
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    sget-object v0, Lsf1;->g:Lsf1;

    .line 17
    .line 18
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->id:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ldv;->d(Ljava/lang/String;)Ljl0;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 25
    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->hasBackups()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_0
    return-object v1

    .line 36
    :cond_1
    invoke-static {}, Ld6;->o()V

    .line 37
    .line 38
    .line 39
    return-object v1
.end method

.method public final fetchLocalBackup()Lkj3;
    .locals 2

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
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-static {p0, v0, v0}, Lorg/swiftapps/swiftbackup/folders/data/a;->a(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;ZZ)Lkj3;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Lkj3;->f()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_0
    return-object v1

    .line 29
    :cond_1
    invoke-static {}, Ld6;->o()V

    .line 30
    .line 31
    .line 32
    return-object v1
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->displayName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSetupCreationTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->setupCreationTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getSourceFolder()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->sourceFolder:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hasBackup(Z)Z
    .locals 2

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
    if-nez v0, :cond_3

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->fetchCloudBackup()Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    return v1

    .line 26
    :cond_0
    return v0

    .line 27
    :cond_1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->fetchLocalBackup()Lkj3;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    return v1

    .line 34
    :cond_2
    return v0

    .line 35
    :cond_3
    invoke-static {}, Ld6;->o()V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    return p0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->id:Ljava/lang/String;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->displayName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->sourceFolder:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-wide v1, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->setupCreationTime:J

    .line 23
    .line 24
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    add-int/2addr p0, v0

    .line 29
    return p0
.end method

.method public final isValid()Z
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->id:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->validateDisplayName()Lom3;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-boolean v0, v0, Lom3;->b:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->validateSourceFolder()Lom3;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    iget-boolean p0, p0, Lom3;->b:Z

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method public final toDisplayString()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->displayName:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->id:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "\', id=\'"

    .line 6
    .line 7
    const-string v2, "\')"

    .line 8
    .line 9
    const-string v3, "FolderItem(name=\'"

    .line 10
    .line 11
    invoke-static {v3, v0, v1, p0, v2}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->sourceFolder:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->displayName:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->id:Ljava/lang/String;

    .line 6
    .line 7
    const-string v2, "\', displayName=\'"

    .line 8
    .line 9
    const-string v3, "\', id=\'"

    .line 10
    .line 11
    const-string v4, "FolderItem(sourceFolder=\'"

    .line 12
    .line 13
    invoke-static {v4, v0, v2, v1, v3}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "\')"

    .line 18
    .line 19
    invoke-static {v0, p0, v1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final validateDisplayName()Lom3;
    .locals 3
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->displayName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_3

    .line 24
    .line 25
    const-string v0, "  "

    .line 26
    .line 27
    invoke-static {p0, v0, v1}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/16 v2, 0x1e

    .line 39
    .line 40
    if-le v0, v2, :cond_2

    .line 41
    .line 42
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 43
    .line 44
    const v0, 0x7f130205

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Ldj7;->g(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v2, Lom3;

    .line 52
    .line 53
    invoke-direct {v2, p0, v0, v1}, Lom3;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 54
    .line 55
    .line 56
    return-object v2

    .line 57
    :cond_2
    new-instance v0, Lom3;

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    const/4 v2, 0x1

    .line 61
    invoke-direct {v0, p0, v1, v2}, Lom3;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 62
    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_3
    :goto_0
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 66
    .line 67
    const v0, 0x7f1302d2

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Ldj7;->g(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    new-instance v2, Lom3;

    .line 75
    .line 76
    invoke-direct {v2, p0, v0, v1}, Lom3;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 77
    .line 78
    .line 79
    return-object v2
.end method

.method public final validateSourceFolder()Lom3;
    .locals 3
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->sourceFolder:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    :goto_0
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 25
    .line 26
    const v0, 0x7f1302d5

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Ldj7;->g(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Lom3;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-direct {v1, p0, v0, v2}, Lom3;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    return-object v1

    .line 40
    :cond_1
    new-instance v0, Lom3;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    const/4 v2, 0x1

    .line 44
    invoke-direct {v0, p0, v1, v2}, Lom3;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    return-object v0
.end method

.method public final writeToFirebaseNode()Laf3;
    .locals 9
    .annotation runtime Ljz2;
    .end annotation

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
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_3

    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->isValid()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    sget-object v0, Lre3;->a:Lzc2;

    .line 23
    .line 24
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->id:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lre3;->h()Lzc2;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2, v0}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v2, "folderItem"

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 44
    .line 45
    invoke-virtual {v0}, Lzc2;->e()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v2}, Lzc2;->e()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const-string v5, "Uploading folderItem at node: "

    .line 54
    .line 55
    const-string v6, "/"

    .line 56
    .line 57
    invoke-static {v5, v0, v6, v4}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    const/4 v7, 0x4

    .line 62
    const/4 v8, 0x0

    .line 63
    const-string v4, "FolderItem.writeToCloud"

    .line 64
    .line 65
    const/4 v6, 0x0

    .line 66
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v2, p0}, Lcf3;->c(Lzc2;Ljava/lang/Object;)Laf3;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sget-object v2, Lze3;->b:Lze3;

    .line 74
    .line 75
    invoke-static {v0, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_0

    .line 80
    .line 81
    const/4 v7, 0x4

    .line 82
    const/4 v8, 0x0

    .line 83
    const-string v5, "Uploading FolderItem to firebase complete"

    .line 84
    .line 85
    const/4 v6, 0x0

    .line 86
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    return-object v0

    .line 90
    :cond_0
    instance-of v2, v0, Lye3;

    .line 91
    .line 92
    if-eqz v2, :cond_1

    .line 93
    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v2, "Error occurred while uploading FolderItem to Firebase = "

    .line 97
    .line 98
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    const/4 v7, 0x4

    .line 109
    const/4 v8, 0x0

    .line 110
    const/4 v6, 0x0

    .line 111
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    return-object v0

    .line 115
    :cond_1
    invoke-static {}, Lq;->j()V

    .line 116
    .line 117
    .line 118
    return-object v1

    .line 119
    :cond_2
    const-string v0, "Folder item invalid: "

    .line 120
    .line 121
    invoke-static {p0, v0}, Lq;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    return-object v1

    .line 125
    :cond_3
    invoke-static {}, Ld6;->o()V

    .line 126
    .line 127
    .line 128
    return-object v1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->id:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->displayName:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->sourceFolder:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->setupCreationTime:J

    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
