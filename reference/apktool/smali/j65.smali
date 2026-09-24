.class public final Lj65;
.super Ly23;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final f(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2

    .line 1
    const-class v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    const-class v0, Ljava/util/TreeMap;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_1
    new-instance v0, Lw70;

    .line 20
    .line 21
    iget-object p0, p0, Ly23;->d:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Lvb8;

    .line 24
    .line 25
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string p1, "Cannot instantiate %s for %s"

    .line 30
    .line 31
    invoke-direct {v0, p1, p0}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    throw v0
.end method

.method public final g(Lmc4;)Lgd4;
    .locals 6

    .line 1
    iget-object v0, p0, Ly23;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lvb8;

    .line 4
    .line 5
    iget-object v1, p0, Ly23;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lai5;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ly23;->a(Lmc4;)Lwi8;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0}, Ly23;->b()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "Invalid map %s for %s"

    .line 18
    .line 19
    const-class v4, Ljava/util/Map;

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    invoke-interface {p1}, Lwi8;->getType()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v2}, Ly23;->c(Ljava/lang/Class;)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-nez v5, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0, v2}, Lj65;->f(Ljava/lang/Class;)Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    new-instance p0, Lvq;

    .line 44
    .line 45
    invoke-direct {p0, v1, p1, v2}, Lvq;-><init>(Lai5;Lwi8;Ljava/lang/Class;)V

    .line 46
    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_1
    new-instance p0, Lw70;

    .line 50
    .line 51
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {p0, v3, p1}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_2
    invoke-static {v2}, Ly23;->c(Ljava/lang/Class;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_3

    .line 64
    .line 65
    invoke-virtual {p0, v2}, Lj65;->f(Ljava/lang/Class;)Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    :cond_3
    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_4

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Lai5;->k(Ljava/lang/Class;)Lgd;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0

    .line 80
    :cond_4
    new-instance p0, Lw70;

    .line 81
    .line 82
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-direct {p0, v3, p1}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    throw p0
.end method

.method public final h()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ly23;->b()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ly23;->c(Ljava/lang/Class;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lj65;->f(Ljava/lang/Class;)Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v1, v0

    .line 17
    :goto_0
    const-class v2, Ljava/util/Map;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_1
    new-instance v1, Lw70;

    .line 31
    .line 32
    iget-object p0, p0, Ly23;->d:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p0, Lvb8;

    .line 35
    .line 36
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string v0, "Invalid map %s for %s"

    .line 41
    .line 42
    invoke-direct {v1, v0, p0}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    throw v1
.end method
