.class public final Lb28;
.super Lh3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final a(Lun2;Lke;)Lgt0;
    .locals 6

    .line 1
    iget p0, p1, Lun2;->g:I

    .line 2
    .line 3
    const/4 p2, 0x4

    .line 4
    if-lt p0, p2, :cond_0

    .line 5
    .line 6
    goto :goto_2

    .line 7
    :cond_0
    iget p0, p1, Lun2;->e:I

    .line 8
    .line 9
    iget-object p1, p1, Lun2;->a:Ljava/lang/CharSequence;

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    const/4 v0, 0x0

    .line 16
    move v1, v0

    .line 17
    move v2, v1

    .line 18
    move v3, v2

    .line 19
    :goto_0
    if-ge p0, p2, :cond_5

    .line 20
    .line 21
    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const/16 v5, 0x9

    .line 26
    .line 27
    if-eq v4, v5, :cond_4

    .line 28
    .line 29
    const/16 v5, 0x20

    .line 30
    .line 31
    if-eq v4, v5, :cond_4

    .line 32
    .line 33
    const/16 v5, 0x2a

    .line 34
    .line 35
    if-eq v4, v5, :cond_3

    .line 36
    .line 37
    const/16 v5, 0x2d

    .line 38
    .line 39
    if-eq v4, v5, :cond_2

    .line 40
    .line 41
    const/16 v5, 0x5f

    .line 42
    .line 43
    if-eq v4, v5, :cond_1

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    :cond_4
    :goto_1
    add-int/lit8 p0, p0, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_5
    const/4 p0, 0x3

    .line 58
    if-lt v1, p0, :cond_6

    .line 59
    .line 60
    if-nez v2, :cond_6

    .line 61
    .line 62
    if-eqz v3, :cond_8

    .line 63
    .line 64
    :cond_6
    if-lt v2, p0, :cond_7

    .line 65
    .line 66
    if-nez v1, :cond_7

    .line 67
    .line 68
    if-eqz v3, :cond_8

    .line 69
    .line 70
    :cond_7
    if-lt v3, p0, :cond_9

    .line 71
    .line 72
    if-nez v1, :cond_9

    .line 73
    .line 74
    if-nez v2, :cond_9

    .line 75
    .line 76
    :cond_8
    new-instance p0, Lc28;

    .line 77
    .line 78
    invoke-direct {p0}, Lc28;-><init>()V

    .line 79
    .line 80
    .line 81
    const/4 p2, 0x1

    .line 82
    new-array p2, p2, [Lg3;

    .line 83
    .line 84
    aput-object p0, p2, v0

    .line 85
    .line 86
    new-instance p0, Lgt0;

    .line 87
    .line 88
    invoke-direct {p0, p2}, Lgt0;-><init>([Lg3;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    iput p1, p0, Lgt0;->b:I

    .line 96
    .line 97
    return-object p0

    .line 98
    :cond_9
    :goto_2
    const/4 p0, 0x0

    .line 99
    return-object p0
.end method
