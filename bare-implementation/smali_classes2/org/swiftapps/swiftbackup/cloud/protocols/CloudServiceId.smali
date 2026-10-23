.class public final Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final Companion:Llj1;


# instance fields
.field private final id:Ljava/lang/String;

.field private final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Llj1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->Companion:Llj1;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 28
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->version:I

    .line 27
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->id:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    move p1, v0

    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    sget-object p2, Lnh4;->d:Lnh4;

    .line 12
    .line 13
    const/4 p3, 0x6

    .line 14
    invoke-virtual {p2, p3, v0, v0}, Lnh4;->i(IZZ)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;-><init>(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;ILjava/lang/String;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->version:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->id:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->copy(ILjava/lang/String;)Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->version:I

    .line 2
    .line 3
    return p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(ILjava/lang/String;)Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;-><init>(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
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
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 12
    .line 13
    iget v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->version:I

    .line 14
    .line 15
    iget v3, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->version:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->id:Ljava/lang/String;

    .line 21
    .line 22
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->id:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getVersion()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->version:I

    .line 2
    .line 3
    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->version:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->id:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    add-int/2addr p0, v0

    .line 16
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->version:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->id:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "CloudServiceId(version="

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v0, ", id="

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
