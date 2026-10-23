.class public final Lws8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ldt8;


# virtual methods
.method public final a(Let8;)V
    .locals 2

    .line 1
    sget-object p0, Lvr6;->INSTANCE:Lvr6;

    .line 2
    .line 3
    const-string p1, "enableConfig: Not possible on Android Q"

    .line 4
    .line 5
    sget-object v0, Lvr6$a;->YELLOW:Lvr6$a;

    .line 6
    .line 7
    const-string v1, "QHelper"

    .line 8
    .line 9
    invoke-virtual {p0, v1, p1, v0}, Lvr6;->e(Ljava/lang/String;Ljava/lang/String;Lvr6$a;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final b(Ljava/util/List;Lcz;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {p0, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const/4 v0, 0x0

    .line 17
    if-nez p0, :cond_2

    .line 18
    .line 19
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    const-string v2, "restoreAll: "

    .line 26
    .line 27
    const-string v3, " items"

    .line 28
    .line 29
    invoke-static {p0, v2, v3}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const/4 v5, 0x4

    .line 34
    const/4 v6, 0x0

    .line 35
    const-string v2, "QHelper"

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    sget-object p0, Lat8;->a:Lat8;

    .line 42
    .line 43
    invoke-virtual {p2, p0}, Lcz;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    const/4 v7, 0x1

    .line 51
    if-le p0, v7, :cond_0

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    const-string v2, "performRestore: configs.size="

    .line 58
    .line 59
    const-string v3, ". Can\'t batch restore on Android Q!"

    .line 60
    .line 61
    invoke-static {p0, v2, v3}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    const/4 v5, 0x4

    .line 66
    const/4 v6, 0x0

    .line 67
    const-string v2, "QHelper"

    .line 68
    .line 69
    const/4 v4, 0x0

    .line 70
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    invoke-static {p1}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    check-cast p0, Let8;

    .line 78
    .line 79
    new-instance p1, Lbt8;

    .line 80
    .line 81
    invoke-direct {p1, p0, v7, v7}, Lbt8;-><init>(Let8;II)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, p1}, Lcz;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {p1, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-nez p1, :cond_1

    .line 100
    .line 101
    new-instance p1, Llt8;

    .line 102
    .line 103
    invoke-direct {p1, p0}, Llt8;-><init>(Let8;)V

    .line 104
    .line 105
    .line 106
    invoke-static {}, Lny2;->b()Lny2;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-virtual {p0, p1}, Lny2;->e(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    sget-object p0, Lzs8;->a:Lzs8;

    .line 114
    .line 115
    invoke-virtual {p2, p0}, Lcz;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    return v0

    .line 119
    :cond_1
    invoke-static {}, Ld6;->o()V

    .line 120
    .line 121
    .line 122
    return v0

    .line 123
    :cond_2
    invoke-static {}, Ld6;->o()V

    .line 124
    .line 125
    .line 126
    return v0
.end method

.method public final c()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
