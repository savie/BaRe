.class public final Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final Companion:Li58;

.field private static final logTag:Ljava/lang/String; = "TokenCredentials"


# instance fields
.field private final cloudServiceId:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

.field private final expiresAtMillis:Ljava/lang/Long;

.field private final refreshToken:Ljava/lang/String;

.field private final token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li58;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->Companion:Li58;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 32
    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;-><init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Ljava/lang/String;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->token:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->cloudServiceId:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 30
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->refreshToken:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->expiresAtMillis:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Ljava/lang/String;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const-string p1, ""

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p6, :cond_1

    .line 11
    .line 12
    move-object p2, v0

    .line 13
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 14
    .line 15
    if-eqz p6, :cond_2

    .line 16
    .line 17
    move-object p3, v0

    .line 18
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 19
    .line 20
    if-eqz p5, :cond_3

    .line 21
    .line 22
    move-object p4, v0

    .line 23
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;-><init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Ljava/lang/String;Ljava/lang/Long;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Ljava/lang/String;Ljava/lang/Long;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->token:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->cloudServiceId:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 14
    .line 15
    if-eqz p6, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->refreshToken:Ljava/lang/String;

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 20
    .line 21
    if-eqz p5, :cond_3

    .line 22
    .line 23
    iget-object p4, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->expiresAtMillis:Ljava/lang/Long;

    .line 24
    .line 25
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->copy(Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Ljava/lang/String;Ljava/lang/Long;)Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->token:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->cloudServiceId:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->refreshToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component4()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->expiresAtMillis:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Ljava/lang/String;Ljava/lang/Long;)Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;

    .line 5
    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;-><init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Ljava/lang/String;Ljava/lang/Long;)V

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
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->token:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->token:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->cloudServiceId:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 25
    .line 26
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->cloudServiceId:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->refreshToken:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->refreshToken:Ljava/lang/String;

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
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->expiresAtMillis:Ljava/lang/Long;

    .line 47
    .line 48
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->expiresAtMillis:Ljava/lang/Long;

    .line 49
    .line 50
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-nez p0, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    return v0
.end method

.method public final getCloudServiceId()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->cloudServiceId:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getEmailAddressValue()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->cloudServiceId:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->getId()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 13
    .line 14
    invoke-static {v1, p0, v1}, Ldj7;->q(Ljava/util/Locale;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object p0, v0

    .line 20
    :goto_0
    if-eqz p0, :cond_2

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v1, 0x0

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 32
    :goto_2
    if-nez v1, :cond_3

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_3
    const-string v1, "TokenCredentials.getEmailAddress: Invalid CloudServiceId = "

    .line 36
    .line 37
    invoke-static {v1, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-object v0
.end method

.method public final getExpiresAtMillis()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->expiresAtMillis:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRefreshToken()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->refreshToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->token:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->token:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->cloudServiceId:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

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
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->hashCode()I

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->refreshToken:Ljava/lang/String;

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    move v1, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    :goto_1
    add-int/2addr v0, v1

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->expiresAtMillis:Ljava/lang/Long;

    .line 37
    .line 38
    if-nez p0, :cond_2

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    :goto_2
    add-int/2addr v0, v2

    .line 46
    return v0
.end method

.method public final isValid()Z
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->cloudServiceId:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 2
    .line 3
    invoke-static {v0}, Lzm5;->u(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->token:Ljava/lang/String;

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-lez p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->token:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->cloudServiceId:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->refreshToken:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->expiresAtMillis:Ljava/lang/Long;

    .line 8
    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v4, "TokenCredentials(token="

    .line 12
    .line 13
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v0, ", cloudServiceId="

    .line 20
    .line 21
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, ", refreshToken="

    .line 28
    .line 29
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, ", expiresAtMillis="

    .line 36
    .line 37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p0, ")"

    .line 44
    .line 45
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method
