.class public final Lx40;
.super Ly23;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final f(Lmc4;)Lgd4;
    .locals 3

    .line 1
    iget-object v0, p0, Ly23;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lvb8;

    .line 4
    .line 5
    invoke-interface {p1}, Lmc4;->getPosition()Ltr9;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0, p1}, Ly23;->a(Lmc4;)Lwi8;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    invoke-interface {p1}, Lwi8;->getType()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0}, Ly23;->b()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    new-instance p0, Ly40;

    .line 40
    .line 41
    invoke-direct {p0, p1}, Ly40;-><init>(Lwi8;)V

    .line 42
    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_0
    new-instance p1, Lw70;

    .line 46
    .line 47
    const-string v2, "Array of type %s cannot hold %s for %s"

    .line 48
    .line 49
    filled-new-array {p0, v1, v0}, [Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-direct {p1, v2, p0}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_1
    new-instance p1, Lw70;

    .line 58
    .line 59
    const-string v1, "The %s not an array for %s"

    .line 60
    .line 61
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-direct {p1, v1, p0}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    throw p1

    .line 69
    :cond_2
    new-instance p0, Lwt1;

    .line 70
    .line 71
    const-string p1, "Array length required for %s at %s"

    .line 72
    .line 73
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-direct {p0, p1, v0}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    throw p0
.end method
