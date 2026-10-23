.class public final Lrq5;
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
    if-eqz p1, :cond_2

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
    move-result-object v3

    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const/4 v5, 0x4

    .line 33
    invoke-virtual {p0, v5}, Lpr1;->g(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v5, " "

    .line 41
    .line 42
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const/4 v5, 0x5

    .line 46
    invoke-virtual {p0, v5}, Lpr1;->g(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    const/4 v5, 0x6

    .line 58
    invoke-virtual {p0, v5}, Lpr1;->g(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    :try_start_0
    iget-object p0, p0, Lpr1;->d:Lp23;

    .line 63
    .line 64
    invoke-virtual {p0, v4}, Lp23;->d(Ljava/lang/String;)Ljava/util/Calendar;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    iput-object p0, v0, Lg23;->e:Ljava/util/Calendar;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    :catch_0
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    const-string v3, "DIR"

    .line 75
    .line 76
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-nez p0, :cond_1

    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    if-eqz p0, :cond_0

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_0
    const/4 p0, 0x0

    .line 94
    iput p0, v0, Lg23;->a:I

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_1
    :goto_0
    iput p1, v0, Lg23;->a:I

    .line 98
    .line 99
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    iput-object p0, v0, Lg23;->d:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 110
    .line 111
    .line 112
    move-result-wide p0

    .line 113
    iput-wide p0, v0, Lg23;->b:J

    .line 114
    .line 115
    return-object v0

    .line 116
    :cond_2
    const/4 p0, 0x0

    .line 117
    return-object p0
.end method

.method public final f()Le23;
    .locals 3

    .line 1
    new-instance p0, Le23;

    .line 2
    .line 3
    const-string v0, "MM-dd-yy HH:mm"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "OS/2"

    .line 7
    .line 8
    invoke-direct {p0, v2, v0, v1}, Le23;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
