.class public final Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljl0;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cloudLimitMBs:Ljava/lang/Long;

.field private final localLimitMBs:Ljava/lang/Long;

.field private final part:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lmk;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lmk;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 30
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->part:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->localLimitMBs:Ljava/lang/Long;

    .line 29
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->cloudLimitMBs:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    sget-object p1, Liu;->DATA:Liu;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    if-eqz p5, :cond_1

    .line 15
    .line 16
    move-object p2, v0

    .line 17
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 18
    .line 19
    if-eqz p4, :cond_2

    .line 20
    .line 21
    move-object p3, v0

    .line 22
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->part:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->localLimitMBs:Ljava/lang/Long;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->cloudLimitMBs:Ljava/lang/Long;

    .line 18
    .line 19
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->copy(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method private final findAppPart()Liu;
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    sget-object v0, Liu;->Companion:Lgu;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->part:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lgu;->a(Ljava/lang/String;)Liu;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->part:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->localLimitMBs:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->cloudLimitMBs:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;

    .line 5
    .line 6
    invoke-direct {p0, p1, p2, p3}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 7
    .line 8
    .line 9
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
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->part:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->part:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->localLimitMBs:Ljava/lang/Long;

    .line 25
    .line 26
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->localLimitMBs:Ljava/lang/Long;

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
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->cloudLimitMBs:Ljava/lang/Long;

    .line 36
    .line 37
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->cloudLimitMBs:Ljava/lang/Long;

    .line 38
    .line 39
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    return v0
.end method

.method public final getAppPart()Liu;
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->findAppPart()Liu;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    sget-object p0, Liu;->DATA:Liu;

    .line 8
    .line 9
    :cond_0
    return-object p0
.end method

.method public final getCloudLimitBytes()J
    .locals 4
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->cloudLimitMBs:Ljava/lang/Long;

    .line 2
    .line 3
    invoke-static {p0}, Lio4;->h(Ljava/lang/Long;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/32 v2, 0x100000

    .line 8
    .line 9
    .line 10
    mul-long/2addr v0, v2

    .line 11
    return-wide v0
.end method

.method public final getCloudLimitMBs()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->cloudLimitMBs:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCopy()Ljl0;
    .locals 6
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    const/4 v4, 0x7

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
    invoke-static/range {v0 .. v5}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->copy$default(Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->part:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLocalLimitBytes()J
    .locals 4
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->localLimitMBs:Ljava/lang/Long;

    .line 2
    .line 3
    invoke-static {p0}, Lio4;->h(Ljava/lang/Long;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/32 v2, 0x100000

    .line 8
    .line 9
    .line 10
    mul-long/2addr v0, v2

    .line 11
    return-wide v0
.end method

.method public final getLocalLimitMBs()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->localLimitMBs:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPart()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->part:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hasLimits()Z
    .locals 6
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->localLimitMBs:Ljava/lang/Long;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->cloudLimitMBs:Ljava/lang/Long;

    .line 4
    .line 5
    filled-new-array {v0, p0}, [Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    return v1

    .line 21
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/Long;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    const-wide/16 v4, 0x0

    .line 44
    .line 45
    cmp-long v0, v2, v4

    .line 46
    .line 47
    if-lez v0, :cond_1

    .line 48
    .line 49
    const/4 p0, 0x1

    .line 50
    return p0

    .line 51
    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->part:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->localLimitMBs:Ljava/lang/Long;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    move v1, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    :goto_0
    add-int/2addr v0, v1

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->cloudLimitMBs:Ljava/lang/Long;

    .line 24
    .line 25
    if-nez p0, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    :goto_1
    add-int/2addr v0, v2

    .line 33
    return v0
.end method

.method public final isValid()Z
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->findAppPart()Liu;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->hasLimits()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

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

.method public final toDisplayString()Ljava/lang/String;
    .locals 10
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->getAppPart()Liu;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-static {v1, v2, v3, v4}, Liu;->toDisplayString$default(Liu;ZILjava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v3, " \u2022 "

    .line 20
    .line 21
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ": "

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->localLimitMBs:Ljava/lang/Long;

    .line 40
    .line 41
    const-string v2, "MB"

    .line 42
    .line 43
    const-string v3, "="

    .line 44
    .line 45
    const-wide/16 v5, 0x0

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 50
    .line 51
    .line 52
    move-result-wide v7

    .line 53
    cmp-long v7, v7, v5

    .line 54
    .line 55
    if-lez v7, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move-object v1, v4

    .line 59
    :goto_0
    if-eqz v1, :cond_1

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 62
    .line 63
    .line 64
    move-result-wide v7

    .line 65
    sget-object v1, Lq05;->DEVICE:Lq05;

    .line 66
    .line 67
    invoke-virtual {v1}, Lq05;->toDisplayString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    new-instance v9, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    move-object v1, v4

    .line 94
    :goto_1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->cloudLimitMBs:Ljava/lang/Long;

    .line 95
    .line 96
    if-eqz p0, :cond_3

    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 99
    .line 100
    .line 101
    move-result-wide v7

    .line 102
    cmp-long v5, v7, v5

    .line 103
    .line 104
    if-lez v5, :cond_2

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_2
    move-object p0, v4

    .line 108
    :goto_2
    if-eqz p0, :cond_3

    .line 109
    .line 110
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 111
    .line 112
    .line 113
    move-result-wide v4

    .line 114
    sget-object p0, Lq05;->CLOUD:Lq05;

    .line 115
    .line 116
    invoke-virtual {p0}, Lq05;->toDisplayString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    new-instance v6, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    :cond_3
    filled-new-array {v1, v4}, [Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-static {p0}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    const/4 v5, 0x0

    .line 150
    const/16 v6, 0x3e

    .line 151
    .line 152
    const-string v2, ", "

    .line 153
    .line 154
    const/4 v3, 0x0

    .line 155
    const/4 v4, 0x0

    .line 156
    invoke-static/range {v1 .. v6}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-lez v1, :cond_4

    .line 165
    .line 166
    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 167
    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_4
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 171
    .line 172
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    const v1, 0x7f1303cb

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 184
    .line 185
    .line 186
    :goto_3
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 9
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->part:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->localLimitMBs:Ljava/lang/Long;

    .line 12
    .line 13
    const-string v2, "MB"

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 21
    .line 22
    .line 23
    move-result-wide v6

    .line 24
    cmp-long v6, v6, v4

    .line 25
    .line 26
    if-lez v6, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v1, v3

    .line 30
    :goto_0
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 33
    .line 34
    .line 35
    move-result-wide v6

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v8, ":Local="

    .line 39
    .line 40
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    :cond_1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->cloudLimitMBs:Ljava/lang/Long;

    .line 57
    .line 58
    if-eqz p0, :cond_3

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 61
    .line 62
    .line 63
    move-result-wide v6

    .line 64
    cmp-long v1, v6, v4

    .line 65
    .line 66
    if-lez v1, :cond_2

    .line 67
    .line 68
    move-object v3, p0

    .line 69
    :cond_2
    if-eqz v3, :cond_3

    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 72
    .line 73
    .line 74
    move-result-wide v3

    .line 75
    new-instance p0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v1, ":Cloud="

    .line 78
    .line 79
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->part:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->localLimitMBs:Ljava/lang/Long;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->cloudLimitMBs:Ljava/lang/Long;

    .line 23
    .line 24
    if-nez p0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    invoke-static {p1, v0, p0}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
