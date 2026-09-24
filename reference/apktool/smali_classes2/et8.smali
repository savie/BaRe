.class public final Let8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Let8$a;
    }
.end annotation


# static fields
.field public static final Companion:Let8$a;

.field private static final logTag:Ljava/lang/String; = "WifiItem"


# instance fields
.field private SSID:Ljava/lang/String;

.field private allowedGroupCiphers:Ljava/util/BitSet;

.field private allowedKeyManagement:Ljava/util/BitSet;

.field private allowedPairwiseCiphers:Ljava/util/BitSet;

.field private allowedProtocols:Ljava/util/BitSet;

.field private hiddenSSID:Ljava/lang/Boolean;

.field private passwordInfo:Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;

.field private preSharedKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Let8$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Let8$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Let8;->Companion:Let8$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/BitSet;Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Let8;->SSID:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Let8;->preSharedKey:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Let8;->hiddenSSID:Ljava/lang/Boolean;

    .line 40
    iput-object p4, p0, Let8;->allowedKeyManagement:Ljava/util/BitSet;

    .line 41
    iput-object p5, p0, Let8;->allowedProtocols:Ljava/util/BitSet;

    .line 42
    iput-object p6, p0, Let8;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 43
    iput-object p7, p0, Let8;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 44
    iput-object p8, p0, Let8;->passwordInfo:Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/BitSet;Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 1
    and-int/lit8 p10, p9, 0x4

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p10, :cond_0

    .line 5
    .line 6
    move-object p3, v0

    .line 7
    :cond_0
    and-int/lit8 p10, p9, 0x8

    .line 8
    .line 9
    if-eqz p10, :cond_1

    .line 10
    .line 11
    move-object p4, v0

    .line 12
    :cond_1
    and-int/lit8 p10, p9, 0x10

    .line 13
    .line 14
    if-eqz p10, :cond_2

    .line 15
    .line 16
    move-object p5, v0

    .line 17
    :cond_2
    and-int/lit8 p10, p9, 0x20

    .line 18
    .line 19
    if-eqz p10, :cond_3

    .line 20
    .line 21
    move-object p6, v0

    .line 22
    :cond_3
    and-int/lit8 p10, p9, 0x40

    .line 23
    .line 24
    if-eqz p10, :cond_4

    .line 25
    .line 26
    move-object p7, v0

    .line 27
    :cond_4
    and-int/lit16 p9, p9, 0x80

    .line 28
    .line 29
    if-eqz p9, :cond_5

    .line 30
    .line 31
    move-object p8, v0

    .line 32
    :cond_5
    invoke-direct/range {p0 .. p8}, Let8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/BitSet;Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static synthetic copy$default(Let8;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/BitSet;Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;ILjava/lang/Object;)Let8;
    .locals 0

    .line 1
    and-int/lit8 p10, p9, 0x1

    .line 2
    .line 3
    if-eqz p10, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Let8;->SSID:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p10, p9, 0x2

    .line 8
    .line 9
    if-eqz p10, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Let8;->preSharedKey:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p10, p9, 0x4

    .line 14
    .line 15
    if-eqz p10, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Let8;->hiddenSSID:Ljava/lang/Boolean;

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p10, p9, 0x8

    .line 20
    .line 21
    if-eqz p10, :cond_3

    .line 22
    .line 23
    iget-object p4, p0, Let8;->allowedKeyManagement:Ljava/util/BitSet;

    .line 24
    .line 25
    :cond_3
    and-int/lit8 p10, p9, 0x10

    .line 26
    .line 27
    if-eqz p10, :cond_4

    .line 28
    .line 29
    iget-object p5, p0, Let8;->allowedProtocols:Ljava/util/BitSet;

    .line 30
    .line 31
    :cond_4
    and-int/lit8 p10, p9, 0x20

    .line 32
    .line 33
    if-eqz p10, :cond_5

    .line 34
    .line 35
    iget-object p6, p0, Let8;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 36
    .line 37
    :cond_5
    and-int/lit8 p10, p9, 0x40

    .line 38
    .line 39
    if-eqz p10, :cond_6

    .line 40
    .line 41
    iget-object p7, p0, Let8;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 42
    .line 43
    :cond_6
    and-int/lit16 p9, p9, 0x80

    .line 44
    .line 45
    if-eqz p9, :cond_7

    .line 46
    .line 47
    iget-object p8, p0, Let8;->passwordInfo:Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;

    .line 48
    .line 49
    :cond_7
    move-object p9, p7

    .line 50
    move-object p10, p8

    .line 51
    move-object p7, p5

    .line 52
    move-object p8, p6

    .line 53
    move-object p5, p3

    .line 54
    move-object p6, p4

    .line 55
    move-object p3, p1

    .line 56
    move-object p4, p2

    .line 57
    move-object p2, p0

    .line 58
    invoke-virtual/range {p2 .. p10}, Let8;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/BitSet;Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;)Let8;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Let8;->SSID:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Let8;->preSharedKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Let8;->hiddenSSID:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component4()Ljava/util/BitSet;
    .locals 0

    .line 1
    iget-object p0, p0, Let8;->allowedKeyManagement:Ljava/util/BitSet;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component5()Ljava/util/BitSet;
    .locals 0

    .line 1
    iget-object p0, p0, Let8;->allowedProtocols:Ljava/util/BitSet;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component6()Ljava/util/BitSet;
    .locals 0

    .line 1
    iget-object p0, p0, Let8;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component7()Ljava/util/BitSet;
    .locals 0

    .line 1
    iget-object p0, p0, Let8;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component8()Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Let8;->passwordInfo:Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/BitSet;Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;)Let8;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Let8;

    .line 5
    .line 6
    invoke-direct/range {p0 .. p8}, Let8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/BitSet;Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;)V

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
    instance-of v1, p1, Let8;

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
    check-cast p1, Let8;

    .line 12
    .line 13
    iget-object v1, p0, Let8;->SSID:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Let8;->SSID:Ljava/lang/String;

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
    iget-object v1, p0, Let8;->preSharedKey:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Let8;->preSharedKey:Ljava/lang/String;

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
    iget-object v1, p0, Let8;->hiddenSSID:Ljava/lang/Boolean;

    .line 36
    .line 37
    iget-object v3, p1, Let8;->hiddenSSID:Ljava/lang/Boolean;

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
    iget-object v1, p0, Let8;->allowedKeyManagement:Ljava/util/BitSet;

    .line 47
    .line 48
    iget-object v3, p1, Let8;->allowedKeyManagement:Ljava/util/BitSet;

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
    iget-object v1, p0, Let8;->allowedProtocols:Ljava/util/BitSet;

    .line 58
    .line 59
    iget-object v3, p1, Let8;->allowedProtocols:Ljava/util/BitSet;

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
    iget-object v1, p0, Let8;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 69
    .line 70
    iget-object v3, p1, Let8;->allowedPairwiseCiphers:Ljava/util/BitSet;

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
    iget-object v1, p0, Let8;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 80
    .line 81
    iget-object v3, p1, Let8;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 82
    .line 83
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_8

    .line 88
    .line 89
    return v2

    .line 90
    :cond_8
    iget-object p0, p0, Let8;->passwordInfo:Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;

    .line 91
    .line 92
    iget-object p1, p1, Let8;->passwordInfo:Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;

    .line 93
    .line 94
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    if-nez p0, :cond_9

    .line 99
    .line 100
    return v2

    .line 101
    :cond_9
    return v0
.end method

.method public final getAllowedGroupCiphers()Ljava/util/BitSet;
    .locals 0

    .line 1
    iget-object p0, p0, Let8;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAllowedKeyManagement()Ljava/util/BitSet;
    .locals 0

    .line 1
    iget-object p0, p0, Let8;->allowedKeyManagement:Ljava/util/BitSet;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAllowedPairwiseCiphers()Ljava/util/BitSet;
    .locals 0

    .line 1
    iget-object p0, p0, Let8;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAllowedProtocols()Ljava/util/BitSet;
    .locals 0

    .line 1
    iget-object p0, p0, Let8;->allowedProtocols:Ljava/util/BitSet;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getHiddenSSID()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Let8;->hiddenSSID:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPasswordInfo()Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Let8;->passwordInfo:Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPreSharedKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Let8;->preSharedKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getProperEnterprisePassword()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Let8;->passwordInfo:Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->getEntPassword()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-static {p0}, Lvm4;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v1, "\""

    .line 18
    .line 19
    invoke-static {p0, v1, v0}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    if-nez p0, :cond_1

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_1
    return-object p0
.end method

.method public final getProperPreSharedKey()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Let8;->preSharedKey:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lvm4;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v1, "\""

    .line 12
    .line 13
    invoke-static {p0, v1, v0}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    if-nez p0, :cond_1

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_1
    return-object p0
.end method

.method public final getSSID()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Let8;->SSID:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hasValidEnterpriseDetails()Z
    .locals 2

    .line 1
    iget-object p0, p0, Let8;->passwordInfo:Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->hasValidEnterpriseDetails()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne p0, v1, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Let8;->SSID:Ljava/lang/String;

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
    iget-object v1, p0, Let8;->preSharedKey:Ljava/lang/String;

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
    iget-object v1, p0, Let8;->hiddenSSID:Ljava/lang/Boolean;

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
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

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
    iget-object v1, p0, Let8;->allowedKeyManagement:Ljava/util/BitSet;

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
    invoke-virtual {v1}, Ljava/util/BitSet;->hashCode()I

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
    iget-object v1, p0, Let8;->allowedProtocols:Ljava/util/BitSet;

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
    invoke-virtual {v1}, Ljava/util/BitSet;->hashCode()I

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
    iget-object v1, p0, Let8;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 63
    .line 64
    if-nez v1, :cond_4

    .line 65
    .line 66
    move v1, v2

    .line 67
    goto :goto_4

    .line 68
    :cond_4
    invoke-virtual {v1}, Ljava/util/BitSet;->hashCode()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    :goto_4
    add-int/2addr v0, v1

    .line 73
    mul-int/lit8 v0, v0, 0x1f

    .line 74
    .line 75
    iget-object v1, p0, Let8;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 76
    .line 77
    if-nez v1, :cond_5

    .line 78
    .line 79
    move v1, v2

    .line 80
    goto :goto_5

    .line 81
    :cond_5
    invoke-virtual {v1}, Ljava/util/BitSet;->hashCode()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    :goto_5
    add-int/2addr v0, v1

    .line 86
    mul-int/lit8 v0, v0, 0x1f

    .line 87
    .line 88
    iget-object p0, p0, Let8;->passwordInfo:Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;

    .line 89
    .line 90
    if-nez p0, :cond_6

    .line 91
    .line 92
    goto :goto_6

    .line 93
    :cond_6
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->hashCode()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    :goto_6
    add-int/2addr v0, v2

    .line 98
    return v0
.end method

.method public final isHiddenSsid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Let8;->hiddenSSID:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    iget-object p0, p0, Let8;->passwordInfo:Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->isHiddenSsid()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    :goto_0
    if-eqz p0, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0

    .line 31
    :cond_2
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final isOpenNetwork()Z
    .locals 2

    .line 1
    iget-object v0, p0, Let8;->passwordInfo:Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->isOpenNetwork()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Let8;->preSharedKey:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz p0, :cond_2

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :cond_2
    :goto_0
    return v1
.end method

.method public final isValid()Z
    .locals 1

    .line 1
    iget-object p0, p0, Let8;->SSID:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    move p0, v0

    .line 16
    :goto_1
    xor-int/2addr p0, v0

    .line 17
    return p0
.end method

.method public final setAllowedGroupCiphers(Ljava/util/BitSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Let8;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 2
    .line 3
    return-void
.end method

.method public final setAllowedKeyManagement(Ljava/util/BitSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Let8;->allowedKeyManagement:Ljava/util/BitSet;

    .line 2
    .line 3
    return-void
.end method

.method public final setAllowedPairwiseCiphers(Ljava/util/BitSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Let8;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 2
    .line 3
    return-void
.end method

.method public final setAllowedProtocols(Ljava/util/BitSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Let8;->allowedProtocols:Ljava/util/BitSet;

    .line 2
    .line 3
    return-void
.end method

.method public final setHiddenSSID(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Let8;->hiddenSSID:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setPasswordInfo(Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Let8;->passwordInfo:Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;

    .line 2
    .line 3
    return-void
.end method

.method public final setPreSharedKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Let8;->preSharedKey:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSSID(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Let8;->SSID:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Let8;->SSID:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "WifiItem: SSID = "

    .line 4
    .line 5
    invoke-static {v0, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
