.class public final Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload$a;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload$a;

.field private static final ENCRYPTED_STRING_SEPARATOR:Ljava/lang/String; = ":::"

.field private static final FORMAT_VERSION_1:Ljava/lang/String; = "v1"

.field private static final MAX_FILE_BYTES:I = 0x100000

.field private static final VERSION_1:I = 0x1

.field private static final VERSION_PREFIX:Ljava/lang/String; = "v"

.field private static final logTag:Ljava/lang/String; = "AppSpecialDataPayload"


# instance fields
.field private final accessibilityComponent:Ljava/lang/String;

.field private final notificationPolicyXml:Ljava/lang/String;

.field private final ntfAccessComponent:Ljava/lang/String;

.field private final permissionStatesCsv:Ljava/lang/String;

.field private final ssaid:Ljava/lang/String;

.field private final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->Companion:Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 57
    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->version:I

    .line 52
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->permissionStatesCsv:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->ssaid:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->ntfAccessComponent:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->accessibilityComponent:Ljava/lang/String;

    .line 56
    iput-object p6, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->notificationPolicyXml:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 1
    and-int/lit8 p8, p7, 0x1

    .line 2
    .line 3
    if-eqz p8, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    :cond_0
    and-int/lit8 p8, p7, 0x2

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p8, :cond_1

    .line 10
    .line 11
    move-object p2, v0

    .line 12
    :cond_1
    and-int/lit8 p8, p7, 0x4

    .line 13
    .line 14
    if-eqz p8, :cond_2

    .line 15
    .line 16
    move-object p3, v0

    .line 17
    :cond_2
    and-int/lit8 p8, p7, 0x8

    .line 18
    .line 19
    if-eqz p8, :cond_3

    .line 20
    .line 21
    move-object p4, v0

    .line 22
    :cond_3
    and-int/lit8 p8, p7, 0x10

    .line 23
    .line 24
    if-eqz p8, :cond_4

    .line 25
    .line 26
    move-object p5, v0

    .line 27
    :cond_4
    and-int/lit8 p7, p7, 0x20

    .line 28
    .line 29
    if-eqz p7, :cond_5

    .line 30
    .line 31
    move-object p8, v0

    .line 32
    move-object p6, p4

    .line 33
    move-object p7, p5

    .line 34
    move-object p4, p2

    .line 35
    move-object p5, p3

    .line 36
    move-object p2, p0

    .line 37
    move p3, p1

    .line 38
    goto :goto_0

    .line 39
    :cond_5
    move-object p8, p6

    .line 40
    move-object p7, p5

    .line 41
    move-object p5, p3

    .line 42
    move-object p6, p4

    .line 43
    move p3, p1

    .line 44
    move-object p4, p2

    .line 45
    move-object p2, p0

    .line 46
    :goto_0
    invoke-direct/range {p2 .. p8}, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;
    .locals 0

    .line 1
    and-int/lit8 p8, p7, 0x1

    .line 2
    .line 3
    if-eqz p8, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->version:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p8, p7, 0x2

    .line 8
    .line 9
    if-eqz p8, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->permissionStatesCsv:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p8, p7, 0x4

    .line 14
    .line 15
    if-eqz p8, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->ssaid:Ljava/lang/String;

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p8, p7, 0x8

    .line 20
    .line 21
    if-eqz p8, :cond_3

    .line 22
    .line 23
    iget-object p4, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->ntfAccessComponent:Ljava/lang/String;

    .line 24
    .line 25
    :cond_3
    and-int/lit8 p8, p7, 0x10

    .line 26
    .line 27
    if-eqz p8, :cond_4

    .line 28
    .line 29
    iget-object p5, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->accessibilityComponent:Ljava/lang/String;

    .line 30
    .line 31
    :cond_4
    and-int/lit8 p7, p7, 0x20

    .line 32
    .line 33
    if-eqz p7, :cond_5

    .line 34
    .line 35
    iget-object p6, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->notificationPolicyXml:Ljava/lang/String;

    .line 36
    .line 37
    :cond_5
    move-object p7, p5

    .line 38
    move-object p8, p6

    .line 39
    move-object p5, p3

    .line 40
    move-object p6, p4

    .line 41
    move p3, p1

    .line 42
    move-object p4, p2

    .line 43
    move-object p2, p0

    .line 44
    invoke-virtual/range {p2 .. p8}, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->version:I

    .line 2
    .line 3
    return p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->permissionStatesCsv:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->ssaid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->ntfAccessComponent:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->accessibilityComponent:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->notificationPolicyXml:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;
    .locals 0

    .line 1
    new-instance p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;

    .line 2
    .line 3
    invoke-direct/range {p0 .. p6}, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
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
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;

    .line 12
    .line 13
    iget v1, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->version:I

    .line 14
    .line 15
    iget v3, p1, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->version:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->permissionStatesCsv:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->permissionStatesCsv:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->ssaid:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->ssaid:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->ntfAccessComponent:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->ntfAccessComponent:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->accessibilityComponent:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->accessibilityComponent:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->notificationPolicyXml:Ljava/lang/String;

    .line 65
    .line 66
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->notificationPolicyXml:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-nez p0, :cond_7

    .line 73
    .line 74
    return v2

    .line 75
    :cond_7
    return v0
.end method

.method public final getAccessibilityComponent()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->accessibilityComponent:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getNotificationPolicyXml()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->notificationPolicyXml:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getNtfAccessComponent()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->ntfAccessComponent:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPermissionStatesCsv()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->permissionStatesCsv:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSsaid()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->ssaid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getVersion()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->version:I

    .line 2
    .line 3
    return p0
.end method

.method public final hasPayloads()Z
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->permissionStatesCsv:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_4

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->ssaid:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_4

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->ntfAccessComponent:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_4

    .line 30
    .line 31
    :cond_2
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->accessibilityComponent:Ljava/lang/String;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_4

    .line 40
    .line 41
    :cond_3
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->notificationPolicyXml:Ljava/lang/String;

    .line 42
    .line 43
    if-eqz p0, :cond_5

    .line 44
    .line 45
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-nez p0, :cond_4

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_4
    const/4 p0, 0x1

    .line 53
    return p0

    .line 54
    :cond_5
    :goto_0
    const/4 p0, 0x0

    .line 55
    return p0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->version:I

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->permissionStatesCsv:Ljava/lang/String;

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
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->ssaid:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->ntfAccessComponent:Ljava/lang/String;

    .line 37
    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    move v1, v2

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    :goto_2
    add-int/2addr v0, v1

    .line 47
    mul-int/lit8 v0, v0, 0x1f

    .line 48
    .line 49
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->accessibilityComponent:Ljava/lang/String;

    .line 50
    .line 51
    if-nez v1, :cond_3

    .line 52
    .line 53
    move v1, v2

    .line 54
    goto :goto_3

    .line 55
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    :goto_3
    add-int/2addr v0, v1

    .line 60
    mul-int/lit8 v0, v0, 0x1f

    .line 61
    .line 62
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->notificationPolicyXml:Ljava/lang/String;

    .line 63
    .line 64
    if-nez p0, :cond_4

    .line 65
    .line 66
    goto :goto_4

    .line 67
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    :goto_4
    add-int/2addr v0, v2

    .line 72
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget v0, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->version:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->permissionStatesCsv:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->ssaid:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->ntfAccessComponent:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->accessibilityComponent:Ljava/lang/String;

    .line 10
    .line 11
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->notificationPolicyXml:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v6, "AppSpecialDataPayload(version="

    .line 16
    .line 17
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, ", permissionStatesCsv="

    .line 24
    .line 25
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, ", ssaid="

    .line 32
    .line 33
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ", ntfAccessComponent="

    .line 37
    .line 38
    const-string v1, ", accessibilityComponent="

    .line 39
    .line 40
    invoke-static {v5, v2, v0, v3, v1}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v0, ", notificationPolicyXml="

    .line 44
    .line 45
    const-string v1, ")"

    .line 46
    .line 47
    invoke-static {v5, v4, v0, p0, v1}, Leq3;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0
.end method
