.class public final Ll34;
.super Lxg7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final b()Ljava/util/Collection;
    .locals 6

    .line 1
    const-string v4, "h5"

    .line 2
    .line 3
    const-string v5, "h6"

    .line 4
    .line 5
    const-string v0, "h1"

    .line 6
    .line 7
    const-string v1, "h2"

    .line 8
    .line 9
    const-string v2, "h3"

    .line 10
    .line 11
    const-string v3, "h4"

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public final d(Lj75;Ldi4;Lq64;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p1, Lj75;->k:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lky3;

    .line 4
    .line 5
    const-class v0, Lk34;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lky3;->a(Ljava/lang/Class;)Lsj7;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    :try_start_0
    iget-object p3, p3, Lq64;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result p3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p3

    .line 27
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    const/4 p3, 0x0

    .line 31
    :goto_0
    if-lt p3, v0, :cond_2

    .line 32
    .line 33
    const/4 v0, 0x6

    .line 34
    if-le p3, v0, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    sget-object v0, Llg7;->d:Lq86;

    .line 38
    .line 39
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    invoke-virtual {v0, p2, p3}, Lq86;->b(Ldi4;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {p0, p1, p2}, Lsj7;->a(Lj75;Ldi4;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 52
    return-object p0
.end method
