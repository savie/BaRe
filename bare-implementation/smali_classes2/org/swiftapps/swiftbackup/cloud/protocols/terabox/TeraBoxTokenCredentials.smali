.class public final Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final Companion:Lm08;

.field public static final DEFAULT_REFRESH_SKEW_MILLIS:J = 0x493e0L

.field private static final logTag:Ljava/lang/String; = "TeraBoxTokenCredentials"


# instance fields
.field private final accessToken:Ljava/lang/String;
    .annotation runtime Ly77;
        alternate = {
            "a"
        }
        value = "accessToken"
    .end annotation
.end field

.field private final apiDomain:Ljava/lang/String;
    .annotation runtime Ly77;
        alternate = {
            "d"
        }
        value = "apiDomain"
    .end annotation
.end field

.field private final cloudServiceId:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;
    .annotation runtime Ly77;
        alternate = {
            "h"
        }
        value = "cloudServiceId"
    .end annotation
.end field

.field private final displayName:Ljava/lang/String;
    .annotation runtime Ly77;
        alternate = {
            "g"
        }
        value = "displayName"
    .end annotation
.end field

.field private final expiresAtMillis:J
    .annotation runtime Ly77;
        alternate = {
            "c"
        }
        value = "expiresAtMillis"
    .end annotation
.end field

.field private final refreshToken:Ljava/lang/String;
    .annotation runtime Ly77;
        alternate = {
            "b"
        }
        value = "refreshToken"
    .end annotation
.end field

.field private final uk:Ljava/lang/String;
    .annotation runtime Ly77;
        alternate = {
            "f"
        }
        value = "uk"
    .end annotation
.end field

.field private final uploadDomain:Ljava/lang/String;
    .annotation runtime Ly77;
        alternate = {
            "e"
        }
        value = "uploadDomain"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lm08;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->Companion:Lm08;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 12

    .line 57
    const/16 v10, 0xff

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->accessToken:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->refreshToken:Ljava/lang/String;

    .line 51
    iput-wide p3, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->expiresAtMillis:J

    .line 52
    iput-object p5, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->apiDomain:Ljava/lang/String;

    .line 53
    iput-object p6, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->uploadDomain:Ljava/lang/String;

    .line 54
    iput-object p7, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->uk:Ljava/lang/String;

    .line 55
    iput-object p8, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->displayName:Ljava/lang/String;

    .line 56
    iput-object p9, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->cloudServiceId:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 1
    and-int/lit8 p11, p10, 0x1

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    if-eqz p11, :cond_0

    .line 6
    .line 7
    move-object p1, v0

    .line 8
    :cond_0
    and-int/lit8 p11, p10, 0x2

    .line 9
    .line 10
    if-eqz p11, :cond_1

    .line 11
    .line 12
    move-object p2, v0

    .line 13
    :cond_1
    and-int/lit8 p11, p10, 0x4

    .line 14
    .line 15
    if-eqz p11, :cond_2

    .line 16
    .line 17
    const-wide/16 p3, 0x0

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p11, p10, 0x8

    .line 20
    .line 21
    if-eqz p11, :cond_3

    .line 22
    .line 23
    move-object p5, v0

    .line 24
    :cond_3
    and-int/lit8 p11, p10, 0x10

    .line 25
    .line 26
    if-eqz p11, :cond_4

    .line 27
    .line 28
    move-object p6, v0

    .line 29
    :cond_4
    and-int/lit8 p11, p10, 0x20

    .line 30
    .line 31
    if-eqz p11, :cond_5

    .line 32
    .line 33
    move-object p7, v0

    .line 34
    :cond_5
    and-int/lit8 p11, p10, 0x40

    .line 35
    .line 36
    if-eqz p11, :cond_6

    .line 37
    .line 38
    move-object p8, v0

    .line 39
    :cond_6
    and-int/lit16 p10, p10, 0x80

    .line 40
    .line 41
    if-eqz p10, :cond_7

    .line 42
    .line 43
    const/4 p9, 0x0

    .line 44
    :cond_7
    invoke-direct/range {p0 .. p9}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;
    .locals 0

    .line 1
    and-int/lit8 p11, p10, 0x1

    .line 2
    .line 3
    if-eqz p11, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->accessToken:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p11, p10, 0x2

    .line 8
    .line 9
    if-eqz p11, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->refreshToken:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p11, p10, 0x4

    .line 14
    .line 15
    if-eqz p11, :cond_2

    .line 16
    .line 17
    iget-wide p3, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->expiresAtMillis:J

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p11, p10, 0x8

    .line 20
    .line 21
    if-eqz p11, :cond_3

    .line 22
    .line 23
    iget-object p5, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->apiDomain:Ljava/lang/String;

    .line 24
    .line 25
    :cond_3
    and-int/lit8 p11, p10, 0x10

    .line 26
    .line 27
    if-eqz p11, :cond_4

    .line 28
    .line 29
    iget-object p6, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->uploadDomain:Ljava/lang/String;

    .line 30
    .line 31
    :cond_4
    and-int/lit8 p11, p10, 0x20

    .line 32
    .line 33
    if-eqz p11, :cond_5

    .line 34
    .line 35
    iget-object p7, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->uk:Ljava/lang/String;

    .line 36
    .line 37
    :cond_5
    and-int/lit8 p11, p10, 0x40

    .line 38
    .line 39
    if-eqz p11, :cond_6

    .line 40
    .line 41
    iget-object p8, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->displayName:Ljava/lang/String;

    .line 42
    .line 43
    :cond_6
    and-int/lit16 p10, p10, 0x80

    .line 44
    .line 45
    if-eqz p10, :cond_7

    .line 46
    .line 47
    iget-object p9, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->cloudServiceId:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 48
    .line 49
    :cond_7
    move-object p10, p8

    .line 50
    move-object p11, p9

    .line 51
    move-object p8, p6

    .line 52
    move-object p9, p7

    .line 53
    move-object p7, p5

    .line 54
    move-wide p5, p3

    .line 55
    move-object p3, p1

    .line 56
    move-object p4, p2

    .line 57
    move-object p2, p0

    .line 58
    invoke-virtual/range {p2 .. p11}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method

.method public static synthetic needsAccessTokenRefresh$default(Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;JJILjava/lang/Object;)Z
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    :cond_0
    and-int/lit8 p5, p5, 0x2

    .line 10
    .line 11
    if-eqz p5, :cond_1

    .line 12
    .line 13
    const-wide/32 p3, 0x493e0

    .line 14
    .line 15
    .line 16
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->needsAccessTokenRefresh(JJ)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->accessToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->refreshToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->expiresAtMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->apiDomain:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->uploadDomain:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->uk:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->displayName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component8()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->cloudServiceId:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;
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
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;

    .line 20
    .line 21
    invoke-direct/range {p0 .. p9}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)V

    .line 22
    .line 23
    .line 24
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->accessToken:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->accessToken:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->refreshToken:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->refreshToken:Ljava/lang/String;

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
    iget-wide v3, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->expiresAtMillis:J

    .line 36
    .line 37
    iget-wide v5, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->expiresAtMillis:J

    .line 38
    .line 39
    cmp-long v1, v3, v5

    .line 40
    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    return v2

    .line 44
    :cond_4
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->apiDomain:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->apiDomain:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_5

    .line 53
    .line 54
    return v2

    .line 55
    :cond_5
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->uploadDomain:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->uploadDomain:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_6

    .line 64
    .line 65
    return v2

    .line 66
    :cond_6
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->uk:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->uk:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_7

    .line 75
    .line 76
    return v2

    .line 77
    :cond_7
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->displayName:Ljava/lang/String;

    .line 78
    .line 79
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->displayName:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_8

    .line 86
    .line 87
    return v2

    .line 88
    :cond_8
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->cloudServiceId:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 89
    .line 90
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->cloudServiceId:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 91
    .line 92
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    if-nez p0, :cond_9

    .line 97
    .line 98
    return v2

    .line 99
    :cond_9
    return v0
.end method

.method public final getAccessToken()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->accessToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getApiDomain()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->apiDomain:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCloudServiceId()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->cloudServiceId:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->displayName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getEmailAddressValue()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->cloudServiceId:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->getId()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 13
    .line 14
    invoke-static {v2, v0, v2}, Ldj7;->q(Ljava/util/Locale;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v1

    .line 20
    :goto_0
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    return-object v0

    .line 30
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->displayName:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->displayName:Ljava/lang/String;

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_3
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->uk:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_4

    .line 48
    .line 49
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->uk:Ljava/lang/String;

    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_4
    const-string p0, "TeraBoxTokenCredentials has no account identifier."

    .line 53
    .line 54
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v1
.end method

.method public final getExpiresAtMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->expiresAtMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getRefreshToken()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->refreshToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUk()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->uk:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUploadDomain()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->uploadDomain:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->accessToken:Ljava/lang/String;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->refreshToken:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-wide v2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->expiresAtMillis:J

    .line 17
    .line 18
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->apiDomain:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->uploadDomain:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->uk:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->displayName:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->cloudServiceId:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 47
    .line 48
    if-nez p0, :cond_0

    .line 49
    .line 50
    const/4 p0, 0x0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->hashCode()I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    :goto_0
    add-int/2addr v0, p0

    .line 57
    return v0
.end method

.method public final isValid()Z
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->cloudServiceId:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

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
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->accessToken:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->refreshToken:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->apiDomain:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->uploadDomain:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-nez p0, :cond_0

    .line 40
    .line 41
    const/4 p0, 0x1

    .line 42
    return p0

    .line 43
    :cond_0
    const/4 p0, 0x0

    .line 44
    return p0
.end method

.method public final needsAccessTokenRefresh(JJ)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->accessToken:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->expiresAtMillis:J

    .line 10
    .line 11
    add-long/2addr p1, p3

    .line 12
    cmp-long p0, v0, p1

    .line 13
    .line 14
    if-gtz p0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 20
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->accessToken:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->refreshToken:Ljava/lang/String;

    .line 4
    .line 5
    iget-wide v2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->expiresAtMillis:J

    .line 6
    .line 7
    iget-object v4, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->apiDomain:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v5, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->uploadDomain:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v6, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->uk:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v7, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->displayName:Ljava/lang/String;

    .line 14
    .line 15
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->cloudServiceId:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 16
    .line 17
    const-string v8, ", refreshToken="

    .line 18
    .line 19
    const-string v9, ", expiresAtMillis="

    .line 20
    .line 21
    const-string v10, "TeraBoxTokenCredentials(accessToken="

    .line 22
    .line 23
    invoke-static {v10, v0, v8, v1, v9}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ", apiDomain="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, ", uploadDomain="

    .line 39
    .line 40
    const-string v2, ", uk="

    .line 41
    .line 42
    invoke-static {v0, v1, v5, v2, v6}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v1, ", displayName="

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", cloudServiceId="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p0, ")"

    .line 62
    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0
.end method
