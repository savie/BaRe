.class public final Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$DatedBackups;
.super Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DatedBackups"
.end annotation


# instance fields
.field private final maxNumOfBackups:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;-><init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    iput p1, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$DatedBackups;->maxNumOfBackups:I

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$DatedBackups;IILjava/lang/Object;)Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$DatedBackups;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$DatedBackups;->maxNumOfBackups:I

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$DatedBackups;->copy(I)Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$DatedBackups;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$DatedBackups;->maxNumOfBackups:I

    .line 2
    .line 3
    return p0
.end method

.method public final copy(I)Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$DatedBackups;
    .locals 0

    .line 1
    new-instance p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$DatedBackups;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$DatedBackups;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$DatedBackups;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$DatedBackups;

    .line 12
    .line 13
    iget p0, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$DatedBackups;->maxNumOfBackups:I

    .line 14
    .line 15
    iget p1, p1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$DatedBackups;->maxNumOfBackups:I

    .line 16
    .line 17
    if-eq p0, p1, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    return v0
.end method

.method public getMaxNumOfBackups()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$DatedBackups;->maxNumOfBackups:I

    .line 2
    .line 3
    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$DatedBackups;->maxNumOfBackups:I

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$DatedBackups;->maxNumOfBackups:I

    .line 2
    .line 3
    const-string v0, "DatedBackups(maxNumOfBackups="

    .line 4
    .line 5
    const-string v1, ")"

    .line 6
    .line 7
    invoke-static {p0, v0, v1}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
