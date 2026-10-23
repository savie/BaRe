.class public final Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;
    }
.end annotation


# instance fields
.field private final _locales:Ljava/lang/String;

.field private final _name:Ljava/lang/String;

.field private final _status:Ljava/lang/String;

.field private final _type:Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;

.field private final idCrowdin:Ljava/lang/String;

.field private final idPaypal:Ljava/lang/String;

.field private final idTelegram:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 49
    const/16 v8, 0x7f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;-><init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->_status:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->_type:Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;

    .line 44
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->_name:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->_locales:Ljava/lang/String;

    .line 46
    iput-object p5, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->idTelegram:Ljava/lang/String;

    .line 47
    iput-object p6, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->idCrowdin:Ljava/lang/String;

    .line 48
    iput-object p7, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->idPaypal:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 1
    and-int/lit8 p9, p8, 0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p9, :cond_0

    .line 5
    .line 6
    move-object p1, v0

    .line 7
    :cond_0
    and-int/lit8 p9, p8, 0x2

    .line 8
    .line 9
    if-eqz p9, :cond_1

    .line 10
    .line 11
    move-object p2, v0

    .line 12
    :cond_1
    and-int/lit8 p9, p8, 0x4

    .line 13
    .line 14
    if-eqz p9, :cond_2

    .line 15
    .line 16
    move-object p3, v0

    .line 17
    :cond_2
    and-int/lit8 p9, p8, 0x8

    .line 18
    .line 19
    if-eqz p9, :cond_3

    .line 20
    .line 21
    move-object p4, v0

    .line 22
    :cond_3
    and-int/lit8 p9, p8, 0x10

    .line 23
    .line 24
    if-eqz p9, :cond_4

    .line 25
    .line 26
    move-object p5, v0

    .line 27
    :cond_4
    and-int/lit8 p9, p8, 0x20

    .line 28
    .line 29
    if-eqz p9, :cond_5

    .line 30
    .line 31
    move-object p6, v0

    .line 32
    :cond_5
    and-int/lit8 p8, p8, 0x40

    .line 33
    .line 34
    if-eqz p8, :cond_6

    .line 35
    .line 36
    move-object p7, v0

    .line 37
    :cond_6
    invoke-direct/range {p0 .. p7}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;-><init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/util/Locale;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->getLocales$lambda$1$0(Ljava/lang/String;)Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;Ljava/lang/String;Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;
    .locals 0

    .line 1
    and-int/lit8 p9, p8, 0x1

    .line 2
    .line 3
    if-eqz p9, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->_status:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p9, p8, 0x2

    .line 8
    .line 9
    if-eqz p9, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->_type:Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p9, p8, 0x4

    .line 14
    .line 15
    if-eqz p9, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->_name:Ljava/lang/String;

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p9, p8, 0x8

    .line 20
    .line 21
    if-eqz p9, :cond_3

    .line 22
    .line 23
    iget-object p4, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->_locales:Ljava/lang/String;

    .line 24
    .line 25
    :cond_3
    and-int/lit8 p9, p8, 0x10

    .line 26
    .line 27
    if-eqz p9, :cond_4

    .line 28
    .line 29
    iget-object p5, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->idTelegram:Ljava/lang/String;

    .line 30
    .line 31
    :cond_4
    and-int/lit8 p9, p8, 0x20

    .line 32
    .line 33
    if-eqz p9, :cond_5

    .line 34
    .line 35
    iget-object p6, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->idCrowdin:Ljava/lang/String;

    .line 36
    .line 37
    :cond_5
    and-int/lit8 p8, p8, 0x40

    .line 38
    .line 39
    if-eqz p8, :cond_6

    .line 40
    .line 41
    iget-object p7, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->idPaypal:Ljava/lang/String;

    .line 42
    .line 43
    :cond_6
    move-object p8, p6

    .line 44
    move-object p9, p7

    .line 45
    move-object p6, p4

    .line 46
    move-object p7, p5

    .line 47
    move-object p4, p2

    .line 48
    move-object p5, p3

    .line 49
    move-object p2, p0

    .line 50
    move-object p3, p1

    .line 51
    invoke-virtual/range {p2 .. p9}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->copy(Ljava/lang/String;Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method

.method private static final getLocales$lambda$1$0(Ljava/lang/String;)Ljava/util/Locale;
    .locals 2

    .line 1
    const-string v0, "_"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x6

    .line 8
    invoke-static {p0, v0, v1}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, "-"

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method private final isCrowdinValid()Z
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->idCrowdin:Ljava/lang/String;

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

.method private final isTelegramValid()Z
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->idTelegram:Ljava/lang/String;

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
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->_status:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->_type:Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->_locales:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->idTelegram:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->idCrowdin:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->idPaypal:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(Ljava/lang/String;Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;
    .locals 0

    .line 1
    new-instance p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;

    .line 2
    .line 3
    invoke-direct/range {p0 .. p7}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;-><init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->_status:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->_status:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->_type:Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;

    .line 25
    .line 26
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->_type:Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->_name:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->_name:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->_locales:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->_locales:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->idTelegram:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->idTelegram:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->idCrowdin:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->idCrowdin:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_7

    .line 73
    .line 74
    return v2

    .line 75
    :cond_7
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->idPaypal:Ljava/lang/String;

    .line 76
    .line 77
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->idPaypal:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-nez p0, :cond_8

    .line 84
    .line 85
    return v2

    .line 86
    :cond_8
    return v0
.end method

.method public final getIdCrowdin()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->idCrowdin:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getIdPaypal()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->idPaypal:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getIdTelegram()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->idTelegram:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLocales()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->_locales:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_3

    .line 5
    .line 6
    const-string v1, ","

    .line 7
    .line 8
    filled-new-array {v1}, [Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x6

    .line 13
    invoke-static {p0, v1, v2}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    .line 18
    .line 19
    const/16 v2, 0xa

    .line 20
    .line 21
    invoke-static {p0, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v3}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_2

    .line 70
    .line 71
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Ljava/lang/String;

    .line 76
    .line 77
    new-instance v4, Ld76;

    .line 78
    .line 79
    const/16 v5, 0x12

    .line 80
    .line 81
    invoke-direct {v4, v3, v5}, Ld76;-><init>(Ljava/lang/Object;I)V

    .line 82
    .line 83
    .line 84
    const-string v3, "TranslatorDetails"

    .line 85
    .line 86
    const/4 v5, 0x1

    .line 87
    invoke-static {v3, v0, v5, v4, v2}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    check-cast v3, Ljava/util/Locale;

    .line 92
    .line 93
    if-eqz v3, :cond_1

    .line 94
    .line 95
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_2
    return-object p0

    .line 100
    :cond_3
    return-object v0
.end method

.method public final getType()Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->_type:Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;->CommunityHelper:Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;

    .line 6
    .line 7
    :cond_0
    return-object p0
.end method

.method public final get_locales()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->_locales:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_name()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_status()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->_status:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_type()Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->_type:Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->_status:Ljava/lang/String;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->_type:Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    move v2, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->_name:Ljava/lang/String;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    move v2, v1

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :goto_2
    add-int/2addr v0, v2

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->_locales:Ljava/lang/String;

    .line 41
    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    move v2, v1

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    :goto_3
    add-int/2addr v0, v2

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    .line 53
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->idTelegram:Ljava/lang/String;

    .line 54
    .line 55
    if-nez v2, :cond_4

    .line 56
    .line 57
    move v2, v1

    .line 58
    goto :goto_4

    .line 59
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    :goto_4
    add-int/2addr v0, v2

    .line 64
    mul-int/lit8 v0, v0, 0x1f

    .line 65
    .line 66
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->idCrowdin:Ljava/lang/String;

    .line 67
    .line 68
    if-nez v2, :cond_5

    .line 69
    .line 70
    move v2, v1

    .line 71
    goto :goto_5

    .line 72
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    :goto_5
    add-int/2addr v0, v2

    .line 77
    mul-int/lit8 v0, v0, 0x1f

    .line 78
    .line 79
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->idPaypal:Ljava/lang/String;

    .line 80
    .line 81
    if-nez p0, :cond_6

    .line 82
    .line 83
    goto :goto_6

    .line 84
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    :goto_6
    add-int/2addr v0, v1

    .line 89
    return v0
.end method

.method public final isNameValid()Z
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->_name:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->_name:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_1

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public final isTranslator()Z
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->getType()Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;->Translator:Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final isValid()Z
    .locals 4
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->getType()Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lorg/swiftapps/swiftbackup/contributor/c;->a:[I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    aget v0, v1, v0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eq v0, v2, :cond_2

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    if-ne v0, v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->isNameValid()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-direct {p0}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->isTelegramValid()Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    return v2

    .line 33
    :cond_0
    return v1

    .line 34
    :cond_1
    invoke-static {}, Lq;->j()V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    return p0

    .line 39
    :cond_2
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->isNameValid()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-direct {p0}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->isTelegramValid()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    invoke-direct {p0}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->isCrowdinValid()Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_3

    .line 56
    .line 57
    return v2

    .line 58
    :cond_3
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->_status:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->_type:Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->_name:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->_locales:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->idTelegram:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->idCrowdin:Ljava/lang/String;

    .line 12
    .line 13
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->idPaypal:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v6, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v7, "ContributorRegistration(_status="

    .line 18
    .line 19
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, ", _type="

    .line 26
    .line 27
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, ", _name="

    .line 34
    .line 35
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, ", _locales="

    .line 39
    .line 40
    const-string v1, ", idTelegram="

    .line 41
    .line 42
    invoke-static {v6, v2, v0, v3, v1}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v0, ", idCrowdin="

    .line 46
    .line 47
    const-string v1, ", idPaypal="

    .line 48
    .line 49
    invoke-static {v6, v4, v0, v5, v1}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v0, ")"

    .line 53
    .line 54
    invoke-static {v6, p0, v0}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0
.end method
