.class public final Ljm5;
.super Lpr1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final b(Ljava/lang/String;)Lg23;
    .locals 6

    .line 1
    new-instance v0, Lg23;

    .line 2
    .line 3
    invoke-direct {v0}, Lg23;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lpr1;->h(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, p1}, Lpr1;->g(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-virtual {p0, v2}, Lpr1;->g(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x3

    .line 23
    invoke-virtual {p0, v3}, Lpr1;->g(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    const/4 v3, 0x4

    .line 27
    invoke-virtual {p0, v3}, Lpr1;->g(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const/4 v4, 0x5

    .line 32
    invoke-virtual {p0, v4}, Lpr1;->g(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    const/16 v5, 0x9

    .line 37
    .line 38
    invoke-virtual {p0, v5}, Lpr1;->g(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    :try_start_0
    iget-object p0, p0, Lpr1;->d:Lp23;

    .line 43
    .line 44
    invoke-virtual {p0, v4}, Lp23;->d(Ljava/lang/String;)Ljava/util/Calendar;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    iput-object p0, v0, Lg23;->e:Ljava/util/Calendar;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    :catch_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const-string v1, "d"

    .line 55
    .line 56
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    const/4 v1, 0x0

    .line 61
    if-eqz p0, :cond_0

    .line 62
    .line 63
    iput p1, v0, Lg23;->a:I

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    iput v1, v0, Lg23;->a:I

    .line 67
    .line 68
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    iput-object p0, v0, Lg23;->d:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 79
    .line 80
    .line 81
    move-result-wide v3

    .line 82
    iput-wide v3, v0, Lg23;->b:J

    .line 83
    .line 84
    const/16 p0, 0x52

    .line 85
    .line 86
    invoke-virtual {v2, p0}, Ljava/lang/String;->indexOf(I)I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    const/4 v3, -0x1

    .line 91
    if-eq p0, v3, :cond_1

    .line 92
    .line 93
    invoke-virtual {v0, v1, v1, p1}, Lg23;->a(IIZ)V

    .line 94
    .line 95
    .line 96
    :cond_1
    const/16 p0, 0x57

    .line 97
    .line 98
    invoke-virtual {v2, p0}, Ljava/lang/String;->indexOf(I)I

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    if-eq p0, v3, :cond_2

    .line 103
    .line 104
    invoke-virtual {v0, v1, p1, p1}, Lg23;->a(IIZ)V

    .line 105
    .line 106
    .line 107
    :cond_2
    return-object v0

    .line 108
    :cond_3
    const/4 p0, 0x0

    .line 109
    return-object p0
.end method

.method public final f()Le23;
    .locals 3

    .line 1
    new-instance p0, Le23;

    .line 2
    .line 3
    const-string v0, "MMM dd yyyy"

    .line 4
    .line 5
    const-string v1, "MMM dd HH:mm"

    .line 6
    .line 7
    const-string v2, "NETWARE"

    .line 8
    .line 9
    invoke-direct {p0, v2, v0, v1}, Le23;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method
