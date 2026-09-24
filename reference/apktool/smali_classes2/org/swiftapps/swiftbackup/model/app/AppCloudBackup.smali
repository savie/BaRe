.class public final Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup$a;

.field public static final logTag:Ljava/lang/String; = "AppCloudBackup"


# instance fields
.field private final _backupId:Ljava/lang/String;

.field private final _metadata:Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

.field private final backupTag$delegate:Los4;

.field private final dateBackedUpOrUpdated$delegate:Los4;

.field private final dateBackup$delegate:Los4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->Companion:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup$a;

    .line 8
    .line 9
    new-instance v0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup$b;

    .line 10
    .line 11
    invoke-direct {v0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup$b;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 66
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;-><init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->_backupId:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->_metadata:Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    new-instance p1, Lck;

    .line 13
    .line 14
    const/4 p2, 0x2

    .line 15
    invoke-direct {p1, p0, p2}, Lck;-><init>(Ljava/lang/Object;I)V

    .line 16
    .line 17
    .line 18
    new-instance p2, Lgv7;

    .line 19
    .line 20
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->backupTag$delegate:Los4;

    .line 24
    .line 25
    new-instance p1, Ldk;

    .line 26
    .line 27
    const/4 p2, 0x4

    .line 28
    invoke-direct {p1, p0, p2}, Ldk;-><init>(Ljava/lang/Object;I)V

    .line 29
    .line 30
    .line 31
    new-instance p2, Lgv7;

    .line 32
    .line 33
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 34
    .line 35
    .line 36
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->dateBackup$delegate:Los4;

    .line 37
    .line 38
    new-instance p1, Lek;

    .line 39
    .line 40
    const/4 p2, 0x5

    .line 41
    invoke-direct {p1, p0, p2}, Lek;-><init>(Ljava/lang/Object;I)V

    .line 42
    .line 43
    .line 44
    new-instance p2, Lgv7;

    .line 45
    .line 46
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 47
    .line 48
    .line 49
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->dateBackedUpOrUpdated$delegate:Los4;

    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    const-string p0, "CloudMetadata null!"

    .line 53
    .line 54
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 p0, 0x0

    .line 58
    throw p0

    .line 59
    :cond_1
    const-string p0, "_backupId null!"

    .line 60
    .line 61
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/4 p0, 0x0

    .line 65
    throw p0
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 67
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;-><init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;)V

    return-void
.end method

.method private static final backupTag_delegate$lambda$0(Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lhk;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getBackupId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lfk;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static synthetic c(Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->dateBackedUpOrUpdated_delegate$lambda$0(Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method private final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->_backupId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private final component2()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->_metadata:Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;Ljava/lang/String;Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->_backupId:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->_metadata:Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->copy(Ljava/lang/String;Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;)Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private static final dateBackedUpOrUpdated_delegate$lambda$0(Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getDateBackupUpdated()Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    return-wide v0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getDateBackup()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    return-wide v0
.end method

.method private static final dateBackup_delegate$lambda$0(Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;)J
    .locals 2

    .line 1
    sget-object v0, Lhk;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getBackupId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lfk;->e(Ljava/lang/String;)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    return-wide v0

    .line 18
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getDateBackup()Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Lio4;->h(Ljava/lang/Long;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    return-wide v0

    .line 31
    :catch_0
    const-wide/16 v0, 0x0

    .line 32
    .line 33
    return-wide v0
.end method

.method public static synthetic e(Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->backupTag_delegate$lambda$0(Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->dateBackup_delegate$lambda$0(Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static synthetic getBackupTag$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getDateBackedUpOrUpdated$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getDateBackup$annotations()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;)Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;
    .locals 0

    .line 1
    new-instance p0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;-><init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;)V

    .line 4
    .line 5
    .line 6
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
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->_backupId:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->_backupId:Ljava/lang/String;

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
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->_metadata:Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 25
    .line 26
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->_metadata:Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 27
    .line 28
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-nez p0, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    return v0
.end method

.method public final getBackupId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->_backupId:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "Backup id null"

    .line 7
    .line 8
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method

.method public final getBackupTag()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->backupTag$delegate:Los4;

    .line 2
    .line 3
    invoke-interface {p0}, Los4;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getDateBackedUpOrUpdated()J
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->dateBackedUpOrUpdated$delegate:Los4;

    .line 2
    .line 3
    invoke-interface {p0}, Los4;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public final getDateBackup()J
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->dateBackup$delegate:Los4;

    .line 2
    .line 3
    invoke-interface {p0}, Los4;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public final getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->_metadata:Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->_backupId:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "CloudMetadata null for backupId \'"

    .line 9
    .line 10
    const-string v1, "\'"

    .line 11
    .line 12
    invoke-static {v0, p0, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->_backupId:Ljava/lang/String;

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
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->_metadata:Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 15
    .line 16
    if-nez p0, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    :goto_1
    add-int/2addr v0, v1

    .line 24
    return v0
.end method

.method public final isValid()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getBackupId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isValidCloudDetails()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->_backupId:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->_metadata:Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "AppCloudBackup(_backupId="

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v0, ", _metadata="

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, ")"

    .line 24
    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->_backupId:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->_metadata:Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1, p2}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
