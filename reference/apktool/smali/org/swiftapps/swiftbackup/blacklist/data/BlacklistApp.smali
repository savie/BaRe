.class public final Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljl0;


# static fields
.field public static final Companion:Lcs0;


# instance fields
.field private final blackListType:I

.field private isInstalled:Z

.field private final name:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcs0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->Companion:Lcs0;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 32
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;-><init>(Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->name:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->packageName:Ljava/lang/String;

    .line 30
    iput p3, p0, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->blackListType:I

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->isInstalled:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    if-eqz p5, :cond_0

    .line 6
    .line 7
    move-object p1, v0

    .line 8
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 9
    .line 10
    if-eqz p5, :cond_1

    .line 11
    .line 12
    move-object p2, v0

    .line 13
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    sget-object p3, Lis0;->Hide:Lis0;

    .line 18
    .line 19
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->name:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->packageName:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    iget p3, p0, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->blackListType:I

    .line 18
    .line 19
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->copy(Ljava/lang/String;Ljava/lang/String;I)Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->blackListType:I

    .line 2
    .line 3
    return p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;I)Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;
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
    new-instance p0, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 8
    .line 9
    invoke-direct {p0, p1, p2, p3}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
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
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->name:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->name:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->packageName:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->packageName:Ljava/lang/String;

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
    iget p0, p0, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->blackListType:I

    .line 36
    .line 37
    iget p1, p1, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->blackListType:I

    .line 38
    .line 39
    if-eq p0, p1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    return v0
.end method

.method public final getBlackListType()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->blackListType:I

    .line 2
    .line 3
    return p0
.end method

.method public final getBlackListTypeDisplayString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-static {}, Lis0;->getEntries()Ljx2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget p0, p0, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->blackListType:I

    .line 6
    .line 7
    check-cast v0, Lkx2;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lkx2;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lis0;

    .line 14
    .line 15
    invoke-virtual {p0}, Lis0;->getDisplayString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
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
    invoke-static/range {v0 .. v5}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->copy$default(Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

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
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->name:Ljava/lang/String;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->packageName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget p0, p0, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->blackListType:I

    .line 17
    .line 18
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    add-int/2addr p0, v0

    .line 23
    return p0
.end method

.method public final isInstalled()Z
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->isInstalled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final setInstalled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->isInstalled:Z

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->name:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->packageName:Ljava/lang/String;

    .line 4
    .line 5
    iget p0, p0, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->blackListType:I

    .line 6
    .line 7
    const-string v2, ", packageName="

    .line 8
    .line 9
    const-string v3, ", blackListType="

    .line 10
    .line 11
    const-string v4, "BlacklistApp(name="

    .line 12
    .line 13
    invoke-static {v4, v0, v2, v1, v3}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, ")"

    .line 18
    .line 19
    invoke-static {v0, p0, v1}, Lxs1;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method
