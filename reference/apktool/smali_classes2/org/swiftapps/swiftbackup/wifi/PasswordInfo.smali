.class public final Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final Companion:Lsx5;

.field private static final logTag:Ljava/lang/String; = "PasswordInfo"


# instance fields
.field private _rawXmlNode:Ljava/lang/String;

.field private entAnonIdentity:Ljava/lang/String;

.field private entCaCert:Ljava/lang/String;

.field private entEapMethod:Ljava/lang/String;

.field private entIdentity:Ljava/lang/String;

.field private entPassword:Ljava/lang/String;

.field private entPhase2Method:Ljava/lang/String;

.field private psk:Ljava/lang/String;

.field private ssid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lsx5;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->Companion:Lsx5;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->ssid:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->psk:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entEapMethod:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entPhase2Method:Ljava/lang/String;

    .line 46
    iput-object p5, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entIdentity:Ljava/lang/String;

    .line 47
    iput-object p6, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entAnonIdentity:Ljava/lang/String;

    .line 48
    iput-object p7, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entPassword:Ljava/lang/String;

    .line 49
    iput-object p8, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entCaCert:Ljava/lang/String;

    .line 50
    iput-object p9, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->_rawXmlNode:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 1
    and-int/lit8 p11, p10, 0x4

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p11, :cond_0

    .line 5
    .line 6
    move-object p3, v0

    .line 7
    :cond_0
    and-int/lit8 p11, p10, 0x8

    .line 8
    .line 9
    if-eqz p11, :cond_1

    .line 10
    .line 11
    move-object p4, v0

    .line 12
    :cond_1
    and-int/lit8 p11, p10, 0x10

    .line 13
    .line 14
    if-eqz p11, :cond_2

    .line 15
    .line 16
    move-object p5, v0

    .line 17
    :cond_2
    and-int/lit8 p11, p10, 0x20

    .line 18
    .line 19
    if-eqz p11, :cond_3

    .line 20
    .line 21
    move-object p6, v0

    .line 22
    :cond_3
    and-int/lit8 p11, p10, 0x40

    .line 23
    .line 24
    if-eqz p11, :cond_4

    .line 25
    .line 26
    move-object p7, v0

    .line 27
    :cond_4
    and-int/lit16 p11, p10, 0x80

    .line 28
    .line 29
    if-eqz p11, :cond_5

    .line 30
    .line 31
    move-object p8, v0

    .line 32
    :cond_5
    and-int/lit16 p10, p10, 0x100

    .line 33
    .line 34
    if-eqz p10, :cond_6

    .line 35
    .line 36
    move-object p9, v0

    .line 37
    :cond_6
    invoke-direct/range {p0 .. p9}, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;
    .locals 0

    .line 1
    and-int/lit8 p11, p10, 0x1

    .line 2
    .line 3
    if-eqz p11, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->ssid:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p11, p10, 0x2

    .line 8
    .line 9
    if-eqz p11, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->psk:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p11, p10, 0x4

    .line 14
    .line 15
    if-eqz p11, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entEapMethod:Ljava/lang/String;

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p11, p10, 0x8

    .line 20
    .line 21
    if-eqz p11, :cond_3

    .line 22
    .line 23
    iget-object p4, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entPhase2Method:Ljava/lang/String;

    .line 24
    .line 25
    :cond_3
    and-int/lit8 p11, p10, 0x10

    .line 26
    .line 27
    if-eqz p11, :cond_4

    .line 28
    .line 29
    iget-object p5, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entIdentity:Ljava/lang/String;

    .line 30
    .line 31
    :cond_4
    and-int/lit8 p11, p10, 0x20

    .line 32
    .line 33
    if-eqz p11, :cond_5

    .line 34
    .line 35
    iget-object p6, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entAnonIdentity:Ljava/lang/String;

    .line 36
    .line 37
    :cond_5
    and-int/lit8 p11, p10, 0x40

    .line 38
    .line 39
    if-eqz p11, :cond_6

    .line 40
    .line 41
    iget-object p7, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entPassword:Ljava/lang/String;

    .line 42
    .line 43
    :cond_6
    and-int/lit16 p11, p10, 0x80

    .line 44
    .line 45
    if-eqz p11, :cond_7

    .line 46
    .line 47
    iget-object p8, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entCaCert:Ljava/lang/String;

    .line 48
    .line 49
    :cond_7
    and-int/lit16 p10, p10, 0x100

    .line 50
    .line 51
    if-eqz p10, :cond_8

    .line 52
    .line 53
    iget-object p9, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->_rawXmlNode:Ljava/lang/String;

    .line 54
    .line 55
    :cond_8
    move-object p10, p8

    .line 56
    move-object p11, p9

    .line 57
    move-object p8, p6

    .line 58
    move-object p9, p7

    .line 59
    move-object p6, p4

    .line 60
    move-object p7, p5

    .line 61
    move-object p4, p2

    .line 62
    move-object p5, p3

    .line 63
    move-object p2, p0

    .line 64
    move-object p3, p1

    .line 65
    invoke-virtual/range {p2 .. p11}, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0
.end method

.method private final hasValidPreSharedKey()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->psk:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

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


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->ssid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->psk:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entEapMethod:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entPhase2Method:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entIdentity:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entAnonIdentity:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entPassword:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entCaCert:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component9()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->_rawXmlNode:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;

    .line 5
    .line 6
    invoke-direct/range {p0 .. p9}, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->ssid:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->ssid:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->psk:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->psk:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entEapMethod:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entEapMethod:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entPhase2Method:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entPhase2Method:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entIdentity:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entIdentity:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entAnonIdentity:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entAnonIdentity:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entPassword:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entPassword:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entCaCert:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entCaCert:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_9

    .line 99
    .line 100
    return v2

    .line 101
    :cond_9
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->_rawXmlNode:Ljava/lang/String;

    .line 102
    .line 103
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->_rawXmlNode:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p0

    .line 109
    if-nez p0, :cond_a

    .line 110
    .line 111
    return v2

    .line 112
    :cond_a
    return v0
.end method

.method public final getEntAnonIdentity()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entAnonIdentity:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getEntCaCert()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entCaCert:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getEntEapMethod()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entEapMethod:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getEntIdentity()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entIdentity:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getEntPassword()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entPassword:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getEntPhase2Method()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entPhase2Method:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getEnterpriseConfig()Landroid/net/wifi/WifiEnterpriseConfig;
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->hasValidEnterpriseDetails()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entEapMethod:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entPhase2Method:Ljava/lang/String;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entIdentity:Ljava/lang/String;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entAnonIdentity:Ljava/lang/String;

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_3
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entPassword:Ljava/lang/String;

    .line 49
    .line 50
    if-eqz p0, :cond_4

    .line 51
    .line 52
    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    :cond_4
    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    move-object p0, v0

    .line 58
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const-string v1, "getEnterpriseConfig: "

    .line 65
    .line 66
    invoke-static {v1, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    const/4 v4, 0x4

    .line 71
    const/4 v5, 0x0

    .line 72
    const-string v1, "PasswordInfo"

    .line 73
    .line 74
    const/4 v3, 0x0

    .line 75
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :cond_5
    const/4 p0, 0x0

    .line 79
    return-object p0
.end method

.method public final getPsk()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->psk:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSsid()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->ssid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_rawXmlNode()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->_rawXmlNode:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hasValidEnterpriseDetails()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entIdentity:Ljava/lang/String;

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
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entAnonIdentity:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entPassword:Ljava/lang/String;

    .line 23
    .line 24
    if-eqz p0, :cond_3

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-nez p0, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 36
    return p0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->ssid:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->psk:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entEapMethod:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entPhase2Method:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entIdentity:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entAnonIdentity:Ljava/lang/String;

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
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entPassword:Ljava/lang/String;

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
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entCaCert:Ljava/lang/String;

    .line 89
    .line 90
    if-nez v1, :cond_6

    .line 91
    .line 92
    move v1, v2

    .line 93
    goto :goto_6

    .line 94
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    :goto_6
    add-int/2addr v0, v1

    .line 99
    mul-int/lit8 v0, v0, 0x1f

    .line 100
    .line 101
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->_rawXmlNode:Ljava/lang/String;

    .line 102
    .line 103
    if-nez p0, :cond_7

    .line 104
    .line 105
    goto :goto_7

    .line 106
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    :goto_7
    add-int/2addr v0, v2

    .line 111
    return v0
.end method

.method public final isHiddenSsid()Z
    .locals 5

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->_rawXmlNode:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_3

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-lez v1, :cond_0

    .line 12
    .line 13
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object p0, v2

    .line 21
    :goto_0
    if-eqz p0, :cond_3

    .line 22
    .line 23
    invoke-static {p0}, Lnq7;->m0(Ljava/lang/String;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    move-object v3, v1

    .line 42
    check-cast v3, Ljava/lang/String;

    .line 43
    .line 44
    const-string v4, "name=\"HiddenSSID\""

    .line 45
    .line 46
    invoke-static {v3, v4, v0}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    move-object v2, v1

    .line 53
    :cond_2
    check-cast v2, Ljava/lang/String;

    .line 54
    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    const-string p0, "value=\"true\""

    .line 58
    .line 59
    invoke-static {v2, p0, v0}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    return p0

    .line 64
    :cond_3
    return v0
.end method

.method public final isOpenNetwork()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->hasValidPreSharedKey()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    xor-int/lit8 p0, p0, 0x1

    .line 6
    .line 7
    return p0
.end method

.method public final isValid()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final setEntAnonIdentity(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entAnonIdentity:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setEntCaCert(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entCaCert:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setEntEapMethod(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entEapMethod:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setEntIdentity(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entIdentity:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setEntPassword(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entPassword:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setEntPhase2Method(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entPhase2Method:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPsk(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->psk:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSsid(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->ssid:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public final set_rawXmlNode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->_rawXmlNode:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->ssid:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->psk:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entEapMethod:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entPhase2Method:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entIdentity:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entAnonIdentity:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entPassword:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->entCaCert:Ljava/lang/String;

    .line 16
    .line 17
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->_rawXmlNode:Ljava/lang/String;

    .line 18
    .line 19
    const-string v8, ", psk="

    .line 20
    .line 21
    const-string v9, ", entEapMethod="

    .line 22
    .line 23
    const-string v10, "PasswordInfo(ssid="

    .line 24
    .line 25
    invoke-static {v10, v0, v8, v1, v9}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, ", entPhase2Method="

    .line 30
    .line 31
    const-string v8, ", entIdentity="

    .line 32
    .line 33
    invoke-static {v0, v2, v1, v3, v8}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v1, ", entAnonIdentity="

    .line 37
    .line 38
    const-string v2, ", entPassword="

    .line 39
    .line 40
    invoke-static {v0, v4, v1, v5, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v1, ", entCaCert="

    .line 44
    .line 45
    const-string v2, ", _rawXmlNode="

    .line 46
    .line 47
    invoke-static {v0, v6, v1, v7, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v1, ")"

    .line 51
    .line 52
    invoke-static {v0, p0, v1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method
