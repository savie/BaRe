.class public final Lnm;
.super Lhx2;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final bind(Lnw6;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Lpm;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    iget-object v0, p2, Lpm;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-interface {p1, p0, v0}, Lnw6;->C(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x2

    .line 13
    iget-object v0, p2, Lpm;->b:Ljava/lang/String;

    .line 14
    .line 15
    invoke-interface {p1, p0, v0}, Lnw6;->C(ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p2, Lpm;->c:Ljava/lang/Boolean;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object p0, v0

    .line 33
    :goto_0
    const/4 v1, 0x3

    .line 34
    if-nez p0, :cond_1

    .line 35
    .line 36
    invoke-interface {p1, v1}, Lnw6;->f(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    int-to-long v2, p0

    .line 45
    invoke-interface {p1, v1, v2, v3}, Lnw6;->e(IJ)V

    .line 46
    .line 47
    .line 48
    :goto_1
    iget-object p0, p2, Lpm;->d:Ljava/lang/Boolean;

    .line 49
    .line 50
    if-eqz p0, :cond_2

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    move-object p0, v0

    .line 62
    :goto_2
    const/4 v1, 0x4

    .line 63
    if-nez p0, :cond_3

    .line 64
    .line 65
    invoke-interface {p1, v1}, Lnw6;->f(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    int-to-long v2, p0

    .line 74
    invoke-interface {p1, v1, v2, v3}, Lnw6;->e(IJ)V

    .line 75
    .line 76
    .line 77
    :goto_3
    iget-object p0, p2, Lpm;->e:Ljava/lang/Boolean;

    .line 78
    .line 79
    if-eqz p0, :cond_4

    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    :cond_4
    const/4 p0, 0x5

    .line 90
    if-nez v0, :cond_5

    .line 91
    .line 92
    invoke-interface {p1, p0}, Lnw6;->f(I)V

    .line 93
    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    int-to-long v0, v0

    .line 101
    invoke-interface {p1, p0, v0, v1}, Lnw6;->e(IJ)V

    .line 102
    .line 103
    .line 104
    :goto_4
    iget-object p0, p2, Lpm;->f:Ljava/lang/String;

    .line 105
    .line 106
    const/4 p2, 0x6

    .line 107
    if-nez p0, :cond_6

    .line 108
    .line 109
    invoke-interface {p1, p2}, Lnw6;->f(I)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_6
    invoke-interface {p1, p2, p0}, Lnw6;->C(ILjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public final createQuery()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "INSERT OR REPLACE INTO `app_cached_data` (`pkgName`,`name`,`isInstalled`,`isEnabled`,`isLaunchable`,`locale`) VALUES (?,?,?,?,?,?)"

    .line 2
    .line 3
    return-object p0
.end method
