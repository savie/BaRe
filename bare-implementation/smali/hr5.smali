.class public final Lhr5;
.super Lxk1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final g(Lmc4;)Lgd4;
    .locals 2

    .line 1
    iget-object v0, p0, Ly23;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lai5;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ly23;->a(Lmc4;)Lwi8;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0}, Ly23;->b()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    invoke-static {v1}, Ly23;->c(Ljava/lang/Class;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lai5;->k(Ljava/lang/Class;)Lgd;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_0
    new-instance p1, Lw70;

    .line 27
    .line 28
    iget-object p0, p0, Ly23;->d:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p0, Lvb8;

    .line 31
    .line 32
    filled-new-array {v1, p0}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string v0, "Cannot instantiate %s for %s"

    .line 37
    .line 38
    invoke-direct {p1, v0, p0}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_1
    new-instance p0, Lx00;

    .line 43
    .line 44
    invoke-direct {p0, v0, p1}, Lx00;-><init>(Lai5;Lwi8;)V

    .line 45
    .line 46
    .line 47
    return-object p0
.end method
