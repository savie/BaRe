.class public final Lwb6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwb6$a;,
        Lwb6$b;
    }
.end annotation


# static fields
.field public static final Companion:Lwb6$a;


# instance fields
.field private accountId:Ljava/lang/String;

.field private autoRenewing:Ljava/lang/Boolean;

.field private isAcknowledged:Ljava/lang/Boolean;

.field private orderId:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private purchaseState:Ljava/lang/Integer;

.field private purchaseTime:Ljava/lang/Long;

.field private purchaseToken:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field private sku:Ljava/lang/String;

.field private verificationTime:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lwb6$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lwb6$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lwb6;->Companion:Lwb6$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 14

    const/16 v12, 0x7ff

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    .line 75
    invoke-direct/range {v0 .. v13}, Lwb6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lwb6;->orderId:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lwb6;->packageName:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lwb6;->sku:Ljava/lang/String;

    .line 67
    iput-object p4, p0, Lwb6;->purchaseToken:Ljava/lang/String;

    .line 68
    iput-object p5, p0, Lwb6;->signature:Ljava/lang/String;

    .line 69
    iput-object p6, p0, Lwb6;->purchaseTime:Ljava/lang/Long;

    .line 70
    iput-object p7, p0, Lwb6;->purchaseState:Ljava/lang/Integer;

    .line 71
    iput-object p8, p0, Lwb6;->autoRenewing:Ljava/lang/Boolean;

    .line 72
    iput-object p9, p0, Lwb6;->accountId:Ljava/lang/String;

    .line 73
    iput-object p10, p0, Lwb6;->isAcknowledged:Ljava/lang/Boolean;

    .line 74
    iput-object p11, p0, Lwb6;->verificationTime:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    .line 1
    and-int/lit8 p13, p12, 0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p13, :cond_0

    .line 5
    .line 6
    move-object p1, v0

    .line 7
    :cond_0
    and-int/lit8 p13, p12, 0x2

    .line 8
    .line 9
    if-eqz p13, :cond_1

    .line 10
    .line 11
    move-object p2, v0

    .line 12
    :cond_1
    and-int/lit8 p13, p12, 0x4

    .line 13
    .line 14
    const-string v1, ""

    .line 15
    .line 16
    if-eqz p13, :cond_2

    .line 17
    .line 18
    move-object p3, v1

    .line 19
    :cond_2
    and-int/lit8 p13, p12, 0x8

    .line 20
    .line 21
    if-eqz p13, :cond_3

    .line 22
    .line 23
    move-object p4, v1

    .line 24
    :cond_3
    and-int/lit8 p13, p12, 0x10

    .line 25
    .line 26
    if-eqz p13, :cond_4

    .line 27
    .line 28
    move-object p5, v0

    .line 29
    :cond_4
    and-int/lit8 p13, p12, 0x20

    .line 30
    .line 31
    if-eqz p13, :cond_5

    .line 32
    .line 33
    move-object p6, v0

    .line 34
    :cond_5
    and-int/lit8 p13, p12, 0x40

    .line 35
    .line 36
    if-eqz p13, :cond_6

    .line 37
    .line 38
    move-object p7, v0

    .line 39
    :cond_6
    and-int/lit16 p13, p12, 0x80

    .line 40
    .line 41
    if-eqz p13, :cond_7

    .line 42
    .line 43
    move-object p8, v0

    .line 44
    :cond_7
    and-int/lit16 p13, p12, 0x100

    .line 45
    .line 46
    if-eqz p13, :cond_8

    .line 47
    .line 48
    move-object p9, v0

    .line 49
    :cond_8
    and-int/lit16 p13, p12, 0x200

    .line 50
    .line 51
    if-eqz p13, :cond_9

    .line 52
    .line 53
    move-object p10, v0

    .line 54
    :cond_9
    and-int/lit16 p12, p12, 0x400

    .line 55
    .line 56
    if-eqz p12, :cond_a

    .line 57
    .line 58
    move-object p11, v0

    .line 59
    :cond_a
    invoke-direct/range {p0 .. p11}, Lwb6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public static synthetic copy$default(Lwb6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;ILjava/lang/Object;)Lwb6;
    .locals 0

    .line 1
    and-int/lit8 p13, p12, 0x1

    .line 2
    .line 3
    if-eqz p13, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lwb6;->orderId:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p13, p12, 0x2

    .line 8
    .line 9
    if-eqz p13, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lwb6;->packageName:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p13, p12, 0x4

    .line 14
    .line 15
    if-eqz p13, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lwb6;->sku:Ljava/lang/String;

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p13, p12, 0x8

    .line 20
    .line 21
    if-eqz p13, :cond_3

    .line 22
    .line 23
    iget-object p4, p0, Lwb6;->purchaseToken:Ljava/lang/String;

    .line 24
    .line 25
    :cond_3
    and-int/lit8 p13, p12, 0x10

    .line 26
    .line 27
    if-eqz p13, :cond_4

    .line 28
    .line 29
    iget-object p5, p0, Lwb6;->signature:Ljava/lang/String;

    .line 30
    .line 31
    :cond_4
    and-int/lit8 p13, p12, 0x20

    .line 32
    .line 33
    if-eqz p13, :cond_5

    .line 34
    .line 35
    iget-object p6, p0, Lwb6;->purchaseTime:Ljava/lang/Long;

    .line 36
    .line 37
    :cond_5
    and-int/lit8 p13, p12, 0x40

    .line 38
    .line 39
    if-eqz p13, :cond_6

    .line 40
    .line 41
    iget-object p7, p0, Lwb6;->purchaseState:Ljava/lang/Integer;

    .line 42
    .line 43
    :cond_6
    and-int/lit16 p13, p12, 0x80

    .line 44
    .line 45
    if-eqz p13, :cond_7

    .line 46
    .line 47
    iget-object p8, p0, Lwb6;->autoRenewing:Ljava/lang/Boolean;

    .line 48
    .line 49
    :cond_7
    and-int/lit16 p13, p12, 0x100

    .line 50
    .line 51
    if-eqz p13, :cond_8

    .line 52
    .line 53
    iget-object p9, p0, Lwb6;->accountId:Ljava/lang/String;

    .line 54
    .line 55
    :cond_8
    and-int/lit16 p13, p12, 0x200

    .line 56
    .line 57
    if-eqz p13, :cond_9

    .line 58
    .line 59
    iget-object p10, p0, Lwb6;->isAcknowledged:Ljava/lang/Boolean;

    .line 60
    .line 61
    :cond_9
    and-int/lit16 p12, p12, 0x400

    .line 62
    .line 63
    if-eqz p12, :cond_a

    .line 64
    .line 65
    iget-object p11, p0, Lwb6;->verificationTime:Ljava/lang/Long;

    .line 66
    .line 67
    :cond_a
    move-object p12, p10

    .line 68
    move-object p13, p11

    .line 69
    move-object p10, p8

    .line 70
    move-object p11, p9

    .line 71
    move-object p8, p6

    .line 72
    move-object p9, p7

    .line 73
    move-object p6, p4

    .line 74
    move-object p7, p5

    .line 75
    move-object p4, p2

    .line 76
    move-object p5, p3

    .line 77
    move-object p2, p0

    .line 78
    move-object p3, p1

    .line 79
    invoke-virtual/range {p2 .. p13}, Lwb6;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;)Lwb6;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lwb6;->orderId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component10()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lwb6;->isAcknowledged:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component11()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lwb6;->verificationTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lwb6;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lwb6;->sku:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lwb6;->purchaseToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lwb6;->signature:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component6()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lwb6;->purchaseTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component7()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwb6;->purchaseState:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component8()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lwb6;->autoRenewing:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component9()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lwb6;->accountId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;)Lwb6;
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance p0, Lwb6;

    .line 8
    .line 9
    invoke-direct/range {p0 .. p11}, Lwb6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;)V

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
    instance-of v1, p1, Lwb6;

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
    check-cast p1, Lwb6;

    .line 12
    .line 13
    iget-object v1, p0, Lwb6;->orderId:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lwb6;->orderId:Ljava/lang/String;

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
    iget-object v1, p0, Lwb6;->packageName:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lwb6;->packageName:Ljava/lang/String;

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
    iget-object v1, p0, Lwb6;->sku:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Lwb6;->sku:Ljava/lang/String;

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
    iget-object v1, p0, Lwb6;->purchaseToken:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p1, Lwb6;->purchaseToken:Ljava/lang/String;

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
    iget-object v1, p0, Lwb6;->signature:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v3, p1, Lwb6;->signature:Ljava/lang/String;

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
    iget-object v1, p0, Lwb6;->purchaseTime:Ljava/lang/Long;

    .line 69
    .line 70
    iget-object v3, p1, Lwb6;->purchaseTime:Ljava/lang/Long;

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
    iget-object v1, p0, Lwb6;->purchaseState:Ljava/lang/Integer;

    .line 80
    .line 81
    iget-object v3, p1, Lwb6;->purchaseState:Ljava/lang/Integer;

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
    iget-object v1, p0, Lwb6;->autoRenewing:Ljava/lang/Boolean;

    .line 91
    .line 92
    iget-object v3, p1, Lwb6;->autoRenewing:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lwb6;->accountId:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v3, p1, Lwb6;->accountId:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_a

    .line 110
    .line 111
    return v2

    .line 112
    :cond_a
    iget-object v1, p0, Lwb6;->isAcknowledged:Ljava/lang/Boolean;

    .line 113
    .line 114
    iget-object v3, p1, Lwb6;->isAcknowledged:Ljava/lang/Boolean;

    .line 115
    .line 116
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_b

    .line 121
    .line 122
    return v2

    .line 123
    :cond_b
    iget-object p0, p0, Lwb6;->verificationTime:Ljava/lang/Long;

    .line 124
    .line 125
    iget-object p1, p1, Lwb6;->verificationTime:Ljava/lang/Long;

    .line 126
    .line 127
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    if-nez p0, :cond_c

    .line 132
    .line 133
    return v2

    .line 134
    :cond_c
    return v0
.end method

.method public final getAccountId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lwb6;->accountId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAutoRenewing()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lwb6;->autoRenewing:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getOrderId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lwb6;->orderId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lwb6;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPurchaseState()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwb6;->purchaseState:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPurchaseStateEnum()Lwb6$b;
    .locals 4
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-static {}, Lwb6$b;->getEntries()Ljx2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    move-object v2, v1

    .line 20
    check-cast v2, Lwb6$b;

    .line 21
    .line 22
    invoke-virtual {v2}, Lwb6$b;->getCode()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    iget-object v3, p0, Lwb6;->purchaseState:Ljava/lang/Integer;

    .line 27
    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-ne v2, v3, :cond_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    const/4 v1, 0x0

    .line 39
    :goto_1
    check-cast v1, Lwb6$b;

    .line 40
    .line 41
    if-nez v1, :cond_3

    .line 42
    .line 43
    sget-object p0, Lwb6$b;->UNSPECIFIED_STATE:Lwb6$b;

    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_3
    return-object v1
.end method

.method public final getPurchaseTime()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lwb6;->purchaseTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPurchaseToken()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lwb6;->purchaseToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lwb6;->signature:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSku()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lwb6;->sku:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getVerificationTime()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lwb6;->verificationTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lwb6;->orderId:Ljava/lang/String;

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
    const/16 v2, 0x1f

    .line 13
    .line 14
    mul-int/2addr v0, v2

    .line 15
    iget-object v3, p0, Lwb6;->packageName:Ljava/lang/String;

    .line 16
    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    move v3, v1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    :goto_1
    add-int/2addr v0, v3

    .line 26
    mul-int/2addr v0, v2

    .line 27
    iget-object v3, p0, Lwb6;->sku:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v0, v2, v3}, Lfz5;->g(IILjava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget-object v3, p0, Lwb6;->purchaseToken:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v0, v2, v3}, Lfz5;->g(IILjava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iget-object v3, p0, Lwb6;->signature:Ljava/lang/String;

    .line 40
    .line 41
    if-nez v3, :cond_2

    .line 42
    .line 43
    move v3, v1

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    :goto_2
    add-int/2addr v0, v3

    .line 50
    mul-int/2addr v0, v2

    .line 51
    iget-object v3, p0, Lwb6;->purchaseTime:Ljava/lang/Long;

    .line 52
    .line 53
    if-nez v3, :cond_3

    .line 54
    .line 55
    move v3, v1

    .line 56
    goto :goto_3

    .line 57
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    :goto_3
    add-int/2addr v0, v3

    .line 62
    mul-int/2addr v0, v2

    .line 63
    iget-object v3, p0, Lwb6;->purchaseState:Ljava/lang/Integer;

    .line 64
    .line 65
    if-nez v3, :cond_4

    .line 66
    .line 67
    move v3, v1

    .line 68
    goto :goto_4

    .line 69
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    :goto_4
    add-int/2addr v0, v3

    .line 74
    mul-int/2addr v0, v2

    .line 75
    iget-object v3, p0, Lwb6;->autoRenewing:Ljava/lang/Boolean;

    .line 76
    .line 77
    if-nez v3, :cond_5

    .line 78
    .line 79
    move v3, v1

    .line 80
    goto :goto_5

    .line 81
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    :goto_5
    add-int/2addr v0, v3

    .line 86
    mul-int/2addr v0, v2

    .line 87
    iget-object v3, p0, Lwb6;->accountId:Ljava/lang/String;

    .line 88
    .line 89
    if-nez v3, :cond_6

    .line 90
    .line 91
    move v3, v1

    .line 92
    goto :goto_6

    .line 93
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    :goto_6
    add-int/2addr v0, v3

    .line 98
    mul-int/2addr v0, v2

    .line 99
    iget-object v3, p0, Lwb6;->isAcknowledged:Ljava/lang/Boolean;

    .line 100
    .line 101
    if-nez v3, :cond_7

    .line 102
    .line 103
    move v3, v1

    .line 104
    goto :goto_7

    .line 105
    :cond_7
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    :goto_7
    add-int/2addr v0, v3

    .line 110
    mul-int/2addr v0, v2

    .line 111
    iget-object p0, p0, Lwb6;->verificationTime:Ljava/lang/Long;

    .line 112
    .line 113
    if-nez p0, :cond_8

    .line 114
    .line 115
    goto :goto_8

    .line 116
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    :goto_8
    add-int/2addr v0, v1

    .line 121
    return v0
.end method

.method public final isAcknowledged()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lwb6;->isAcknowledged:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isSpoofedOrderId()Z
    .locals 2
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lwb6;->orderId:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    const-string v1, "GPA"

    .line 20
    .line 21
    invoke-static {p0, v1, v0}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    xor-int/lit8 p0, p0, 0x1

    .line 26
    .line 27
    return p0

    .line 28
    :cond_1
    :goto_0
    return v0
.end method

.method public final setAccountId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwb6;->accountId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setAcknowledged(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwb6;->isAcknowledged:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setAutoRenewing(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwb6;->autoRenewing:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setOrderId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwb6;->orderId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwb6;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPurchaseState(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwb6;->purchaseState:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setPurchaseTime(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwb6;->purchaseTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setPurchaseToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwb6;->purchaseToken:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public final setSignature(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwb6;->signature:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSku(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwb6;->sku:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public final setVerificationTime(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwb6;->verificationTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .line 1
    iget-object v0, p0, Lwb6;->orderId:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lwb6;->packageName:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lwb6;->sku:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lwb6;->purchaseToken:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lwb6;->signature:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lwb6;->purchaseTime:Ljava/lang/Long;

    .line 12
    .line 13
    iget-object v6, p0, Lwb6;->purchaseState:Ljava/lang/Integer;

    .line 14
    .line 15
    iget-object v7, p0, Lwb6;->autoRenewing:Ljava/lang/Boolean;

    .line 16
    .line 17
    iget-object v8, p0, Lwb6;->accountId:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v9, p0, Lwb6;->isAcknowledged:Ljava/lang/Boolean;

    .line 20
    .line 21
    iget-object p0, p0, Lwb6;->verificationTime:Ljava/lang/Long;

    .line 22
    .line 23
    const-string v10, ", packageName="

    .line 24
    .line 25
    const-string v11, ", sku="

    .line 26
    .line 27
    const-string v12, "PurchaseInfo(orderId="

    .line 28
    .line 29
    invoke-static {v12, v0, v10, v1, v11}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, ", purchaseToken="

    .line 34
    .line 35
    const-string v10, ", signature="

    .line 36
    .line 37
    invoke-static {v0, v2, v1, v3, v10}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", purchaseTime="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, ", purchaseState="

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v1, ", autoRenewing="

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v1, ", accountId="

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v1, ", isAcknowledged="

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", verificationTime="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string p0, ")"

    .line 92
    .line 93
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    return-object p0
.end method
