.class public final Lxa4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljl0;


# instance fields
.field private final btnBackgroundColor:I

.field private final btnIconRes:Ljava/lang/Integer;

.field private final btnTextRes:I

.field private final details:Lv76;

.field private final isEnabled:Z

.field private final isPending:Z

.field private final isPurchased:Z

.field private final isSubscription:Z

.field private final onButtonClick:Lbt3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbt3;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv76;ZZZIILjava/lang/Integer;Lbt3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv76;",
            "ZZZII",
            "Ljava/lang/Integer;",
            "Lbt3;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lxa4;->details:Lv76;

    .line 8
    .line 9
    iput-boolean p2, p0, Lxa4;->isPurchased:Z

    .line 10
    .line 11
    iput-boolean p3, p0, Lxa4;->isPending:Z

    .line 12
    .line 13
    iput-boolean p4, p0, Lxa4;->isEnabled:Z

    .line 14
    .line 15
    iput p5, p0, Lxa4;->btnTextRes:I

    .line 16
    .line 17
    iput p6, p0, Lxa4;->btnBackgroundColor:I

    .line 18
    .line 19
    iput-object p7, p0, Lxa4;->btnIconRes:Ljava/lang/Integer;

    .line 20
    .line 21
    iput-object p8, p0, Lxa4;->onButtonClick:Lbt3;

    .line 22
    .line 23
    iget-object p1, p1, Lv76;->d:Ljava/lang/String;

    .line 24
    .line 25
    const-string p2, "subs"

    .line 26
    .line 27
    invoke-static {p1, p2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput-boolean p1, p0, Lxa4;->isSubscription:Z

    .line 32
    .line 33
    return-void
.end method

.method public static synthetic copy$default(Lxa4;Lv76;ZZZIILjava/lang/Integer;Lbt3;ILjava/lang/Object;)Lxa4;
    .locals 0

    .line 1
    and-int/lit8 p10, p9, 0x1

    .line 2
    .line 3
    if-eqz p10, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lxa4;->details:Lv76;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p10, p9, 0x2

    .line 8
    .line 9
    if-eqz p10, :cond_1

    .line 10
    .line 11
    iget-boolean p2, p0, Lxa4;->isPurchased:Z

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p10, p9, 0x4

    .line 14
    .line 15
    if-eqz p10, :cond_2

    .line 16
    .line 17
    iget-boolean p3, p0, Lxa4;->isPending:Z

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p10, p9, 0x8

    .line 20
    .line 21
    if-eqz p10, :cond_3

    .line 22
    .line 23
    iget-boolean p4, p0, Lxa4;->isEnabled:Z

    .line 24
    .line 25
    :cond_3
    and-int/lit8 p10, p9, 0x10

    .line 26
    .line 27
    if-eqz p10, :cond_4

    .line 28
    .line 29
    iget p5, p0, Lxa4;->btnTextRes:I

    .line 30
    .line 31
    :cond_4
    and-int/lit8 p10, p9, 0x20

    .line 32
    .line 33
    if-eqz p10, :cond_5

    .line 34
    .line 35
    iget p6, p0, Lxa4;->btnBackgroundColor:I

    .line 36
    .line 37
    :cond_5
    and-int/lit8 p10, p9, 0x40

    .line 38
    .line 39
    if-eqz p10, :cond_6

    .line 40
    .line 41
    iget-object p7, p0, Lxa4;->btnIconRes:Ljava/lang/Integer;

    .line 42
    .line 43
    :cond_6
    and-int/lit16 p9, p9, 0x80

    .line 44
    .line 45
    if-eqz p9, :cond_7

    .line 46
    .line 47
    iget-object p8, p0, Lxa4;->onButtonClick:Lbt3;

    .line 48
    .line 49
    :cond_7
    move-object p9, p7

    .line 50
    move-object p10, p8

    .line 51
    move p7, p5

    .line 52
    move p8, p6

    .line 53
    move p5, p3

    .line 54
    move p6, p4

    .line 55
    move-object p3, p1

    .line 56
    move p4, p2

    .line 57
    move-object p2, p0

    .line 58
    invoke-virtual/range {p2 .. p10}, Lxa4;->copy(Lv76;ZZZIILjava/lang/Integer;Lbt3;)Lxa4;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method

.method private final getFinalSubscriptionPricingPhase()Lt76;
    .locals 0

    .line 1
    iget-object p0, p0, Lxa4;->details:Lv76;

    .line 2
    .line 3
    iget-object p0, p0, Lv76;->h:Ljava/util/ArrayList;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lel1;->b1(Ljava/util/ArrayList;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lu76;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lu76;->b:Lrb;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lrb;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Ljava/util/ArrayList;

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    invoke-static {p0}, Lel1;->b1(Ljava/util/ArrayList;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lt76;

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method private final getMonthlyEquivalentPrice()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-direct {p0}, Lxa4;->getFinalSubscriptionPricingPhase()Lt76;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    goto/16 :goto_6

    .line 9
    .line 10
    :cond_0
    iget-wide v1, p0, Lt76;->b:J

    .line 11
    .line 12
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    cmp-long v1, v1, v4

    .line 19
    .line 20
    if-lez v1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move-object v3, v0

    .line 24
    :goto_0
    if-eqz v3, :cond_7

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    :try_start_0
    iget-object p0, p0, Lt76;->c:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {p0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    .line 33
    .line 34
    .line 35
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    new-instance v3, Ljava/math/BigDecimal;

    .line 37
    .line 38
    invoke-direct {v3, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Ljava/math/BigDecimal;

    .line 42
    .line 43
    const-wide/32 v4, 0xb71b00

    .line 44
    .line 45
    .line 46
    invoke-direct {v1, v4, v5}, Ljava/math/BigDecimal;-><init>(J)V

    .line 47
    .line 48
    .line 49
    const/4 v2, 0x6

    .line 50
    sget-object v4, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 51
    .line 52
    invoke-virtual {v3, v1, v2, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {p0}, Ljava/util/Currency;->getDefaultFractionDigits()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    if-ltz v2, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    move-object v3, v0

    .line 68
    :goto_1
    if-eqz v3, :cond_3

    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    goto :goto_2

    .line 75
    :cond_3
    const/4 v2, 0x2

    .line 76
    :goto_2
    const-string v3, "app_locale"

    .line 77
    .line 78
    :try_start_1
    sget-object v4, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 79
    .line 80
    if-eqz v4, :cond_4

    .line 81
    .line 82
    invoke-interface {v4, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    goto :goto_3

    .line 87
    :cond_4
    const-string v3, "prefs"

    .line 88
    .line 89
    invoke-static {v3}, Lpe4;->F(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    .line 93
    :catch_0
    :goto_3
    if-eqz v0, :cond_6

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-nez v3, :cond_5

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_5
    invoke-static {v0}, Lxx3;->g(Ljava/lang/String;)Lis4;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lis4;->a()Ljava/util/Locale;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    goto :goto_5

    .line 111
    :cond_6
    :goto_4
    invoke-static {}, Lxx3;->h()Lis4;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lis4;->a()Ljava/util/Locale;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    :goto_5
    invoke-static {v0}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0, p0}, Ljava/text/NumberFormat;->setCurrency(Ljava/util/Currency;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v2}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v2}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    return-object p0

    .line 137
    :catch_1
    :cond_7
    :goto_6
    return-object v0
.end method


# virtual methods
.method public final component1()Lv76;
    .locals 0

    .line 1
    iget-object p0, p0, Lxa4;->details:Lv76;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lxa4;->isPurchased:Z

    .line 2
    .line 3
    return p0
.end method

.method public final component3()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lxa4;->isPending:Z

    .line 2
    .line 3
    return p0
.end method

.method public final component4()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lxa4;->isEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final component5()I
    .locals 0

    .line 1
    iget p0, p0, Lxa4;->btnTextRes:I

    .line 2
    .line 3
    return p0
.end method

.method public final component6()I
    .locals 0

    .line 1
    iget p0, p0, Lxa4;->btnBackgroundColor:I

    .line 2
    .line 3
    return p0
.end method

.method public final component7()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lxa4;->btnIconRes:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component8()Lbt3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbt3;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lxa4;->onButtonClick:Lbt3;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(Lv76;ZZZIILjava/lang/Integer;Lbt3;)Lxa4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv76;",
            "ZZZII",
            "Ljava/lang/Integer;",
            "Lbt3;",
            ")",
            "Lxa4;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Lxa4;

    .line 5
    .line 6
    invoke-direct/range {p0 .. p8}, Lxa4;-><init>(Lv76;ZZZIILjava/lang/Integer;Lbt3;)V

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
    instance-of v1, p1, Lxa4;

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
    check-cast p1, Lxa4;

    .line 12
    .line 13
    iget-object v1, p0, Lxa4;->details:Lv76;

    .line 14
    .line 15
    iget-object v3, p1, Lxa4;->details:Lv76;

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
    iget-boolean v1, p0, Lxa4;->isPurchased:Z

    .line 25
    .line 26
    iget-boolean v3, p1, Lxa4;->isPurchased:Z

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-boolean v1, p0, Lxa4;->isPending:Z

    .line 32
    .line 33
    iget-boolean v3, p1, Lxa4;->isPending:Z

    .line 34
    .line 35
    if-eq v1, v3, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget-boolean v1, p0, Lxa4;->isEnabled:Z

    .line 39
    .line 40
    iget-boolean v3, p1, Lxa4;->isEnabled:Z

    .line 41
    .line 42
    if-eq v1, v3, :cond_5

    .line 43
    .line 44
    return v2

    .line 45
    :cond_5
    iget v1, p0, Lxa4;->btnTextRes:I

    .line 46
    .line 47
    iget v3, p1, Lxa4;->btnTextRes:I

    .line 48
    .line 49
    if-eq v1, v3, :cond_6

    .line 50
    .line 51
    return v2

    .line 52
    :cond_6
    iget v1, p0, Lxa4;->btnBackgroundColor:I

    .line 53
    .line 54
    iget v3, p1, Lxa4;->btnBackgroundColor:I

    .line 55
    .line 56
    if-eq v1, v3, :cond_7

    .line 57
    .line 58
    return v2

    .line 59
    :cond_7
    iget-object v1, p0, Lxa4;->btnIconRes:Ljava/lang/Integer;

    .line 60
    .line 61
    iget-object v3, p1, Lxa4;->btnIconRes:Ljava/lang/Integer;

    .line 62
    .line 63
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_8

    .line 68
    .line 69
    return v2

    .line 70
    :cond_8
    iget-object p0, p0, Lxa4;->onButtonClick:Lbt3;

    .line 71
    .line 72
    iget-object p1, p1, Lxa4;->onButtonClick:Lbt3;

    .line 73
    .line 74
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    if-nez p0, :cond_9

    .line 79
    .line 80
    return v2

    .line 81
    :cond_9
    return v0
.end method

.method public final getActionButtonText(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lxa4;->btnTextRes:I

    .line 5
    .line 6
    const v1, 0x7f130434

    .line 7
    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lxa4;->getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const v0, 0x7f130435

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_0
    const v1, 0x7f130547

    .line 31
    .line 32
    .line 33
    if-ne v0, v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lxa4;->getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const v0, 0x7f130548

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    return-object p0
.end method

.method public final getBtnBackgroundColor()I
    .locals 0

    .line 1
    iget p0, p0, Lxa4;->btnBackgroundColor:I

    .line 2
    .line 3
    return p0
.end method

.method public final getBtnIconRes()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lxa4;->btnIconRes:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getBtnTextRes()I
    .locals 0

    .line 1
    iget p0, p0, Lxa4;->btnTextRes:I

    .line 2
    .line 3
    return p0
.end method

.method public getCopy()Ljl0;
    .locals 11

    .line 1
    const/16 v9, 0xff

    .line 2
    .line 3
    const/4 v10, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v7, 0x0

    .line 11
    const/4 v8, 0x0

    .line 12
    move-object v0, p0

    .line 13
    invoke-static/range {v0 .. v10}, Lxa4;->copy$default(Lxa4;Lv76;ZZZIILjava/lang/Integer;Lbt3;ILjava/lang/Object;)Lxa4;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final getDetails()Lv76;
    .locals 0

    .line 1
    iget-object p0, p0, Lxa4;->details:Lv76;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDisplayPrice(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lxa4;->isSubscription:Z

    .line 5
    .line 6
    const-string v1, "---"

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object p0, p0, Lxa4;->details:Lv76;

    .line 11
    .line 12
    invoke-virtual {p0}, Lv76;->a()Ls76;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Ls76;->a:Ljava/lang/String;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    return-object v1

    .line 24
    :cond_1
    invoke-direct {p0}, Lxa4;->getFinalSubscriptionPricingPhase()Lt76;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-eqz p0, :cond_3

    .line 29
    .line 30
    iget-object p0, p0, Lt76;->a:Ljava/lang/String;

    .line 31
    .line 32
    if-nez p0, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    move-object v1, p0

    .line 36
    :cond_3
    :goto_0
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 37
    .line 38
    const p0, 0x7f1305ce

    .line 39
    .line 40
    .line 41
    invoke-static {p0}, Ldj7;->g(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-string v0, "app_locale"

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    :try_start_0
    sget-object v3, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 49
    .line 50
    if-eqz v3, :cond_4

    .line 51
    .line 52
    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    goto :goto_1

    .line 57
    :cond_4
    const-string v0, "prefs"

    .line 58
    .line 59
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :catch_0
    :goto_1
    if-eqz v2, :cond_6

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_5

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_5
    invoke-static {v2}, Lxx3;->g(Ljava/lang/String;)Lis4;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lis4;->a()Ljava/util/Locale;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    goto :goto_3

    .line 81
    :cond_6
    :goto_2
    invoke-static {}, Lxx3;->h()Lis4;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lis4;->a()Ljava/util/Locale;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    :goto_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 97
    .line 98
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-static {p1}, Lsz8;->A(Landroid/content/Context;)I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    .line 109
    .line 110
    invoke-direct {v1, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    const-string v2, "/"

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v2, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    const/16 v2, 0x11

    .line 131
    .line 132
    invoke-virtual {v0, v1, p1, p0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 133
    .line 134
    .line 135
    return-object v0
.end method

.method public final getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean p0, p0, Lxa4;->isSubscription:Z

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const p0, 0x7f130422

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const p0, 0x7f130420

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    return-object p0
.end method

.method public final getDisplayTitleShort(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean p0, p0, Lxa4;->isSubscription:Z

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const p0, 0x7f130423

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const p0, 0x7f130421

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    return-object p0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lxa4;->details:Lv76;

    .line 2
    .line 3
    iget-object p0, p0, Lv76;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public final getMonthlyEquivalentText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lxa4;->getMonthlyEquivalentPrice()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const v0, 0x7f1305cf

    .line 13
    .line 14
    .line 15
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final getOnButtonClick()Lbt3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbt3;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lxa4;->onButtonClick:Lbt3;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSubtitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean p0, p0, Lxa4;->isSubscription:Z

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const p0, 0x7f130447

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const p0, 0x7f1303eb

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    return-object p0
.end method

.method public final getSubtitleShort(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean p0, p0, Lxa4;->isSubscription:Z

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const p0, 0x7f1300c5

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const p0, 0x7f1302f2

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lxa4;->details:Lv76;

    .line 2
    .line 3
    iget-object v0, v0, Lv76;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x1f

    .line 10
    .line 11
    mul-int/2addr v0, v1

    .line 12
    iget-boolean v2, p0, Lxa4;->isPurchased:Z

    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Lfz5;->h(IIZ)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-boolean v2, p0, Lxa4;->isPending:Z

    .line 19
    .line 20
    invoke-static {v0, v1, v2}, Lfz5;->h(IIZ)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-boolean v2, p0, Lxa4;->isEnabled:Z

    .line 25
    .line 26
    invoke-static {v0, v1, v2}, Lfz5;->h(IIZ)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget v2, p0, Lxa4;->btnTextRes:I

    .line 31
    .line 32
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget v2, p0, Lxa4;->btnBackgroundColor:I

    .line 37
    .line 38
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget-object v2, p0, Lxa4;->btnIconRes:Ljava/lang/Integer;

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    if-nez v2, :cond_0

    .line 46
    .line 47
    move v2, v3

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    :goto_0
    add-int/2addr v0, v2

    .line 54
    mul-int/2addr v0, v1

    .line 55
    iget-object p0, p0, Lxa4;->onButtonClick:Lbt3;

    .line 56
    .line 57
    if-nez p0, :cond_1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    :goto_1
    add-int/2addr v0, v3

    .line 65
    return v0
.end method

.method public final isEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lxa4;->isEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isLifetime()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lxa4;->isSubscription:Z

    .line 2
    .line 3
    xor-int/lit8 p0, p0, 0x1

    .line 4
    .line 5
    return p0
.end method

.method public final isPending()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lxa4;->isPending:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isPurchased()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lxa4;->isPurchased:Z

    .line 2
    .line 3
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Lxa4;->details:Lv76;

    .line 2
    .line 3
    iget-boolean v1, p0, Lxa4;->isPurchased:Z

    .line 4
    .line 5
    iget-boolean v2, p0, Lxa4;->isPending:Z

    .line 6
    .line 7
    iget-boolean v3, p0, Lxa4;->isEnabled:Z

    .line 8
    .line 9
    iget v4, p0, Lxa4;->btnTextRes:I

    .line 10
    .line 11
    iget v5, p0, Lxa4;->btnBackgroundColor:I

    .line 12
    .line 13
    iget-object v6, p0, Lxa4;->btnIconRes:Ljava/lang/Integer;

    .line 14
    .line 15
    iget-object p0, p0, Lxa4;->onButtonClick:Lbt3;

    .line 16
    .line 17
    new-instance v7, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v8, "InAppItem(details="

    .line 20
    .line 21
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, ", isPurchased="

    .line 28
    .line 29
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, ", isPending="

    .line 36
    .line 37
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, ", isEnabled="

    .line 44
    .line 45
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v0, ", btnTextRes="

    .line 52
    .line 53
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, ", btnBackgroundColor="

    .line 57
    .line 58
    const-string v1, ", btnIconRes="

    .line 59
    .line 60
    invoke-static {v7, v4, v0, v5, v1}, Lxs1;->s(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v0, ", onButtonClick="

    .line 67
    .line 68
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p0, ")"

    .line 75
    .line 76
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0
.end method
