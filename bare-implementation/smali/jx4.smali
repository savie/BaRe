.class public final Ljx4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lsj7;


# virtual methods
.method public final a(Lj75;Ldi4;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p0, Llg7;->a:Lq86;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lq86;->a(Ldi4;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Lkx1;->a:Lkx1;

    .line 8
    .line 9
    if-ne v0, p0, :cond_0

    .line 10
    .line 11
    new-instance p0, Lgx0;

    .line 12
    .line 13
    iget-object p1, p1, Lj75;->a:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Lo75;

    .line 16
    .line 17
    sget-object v0, Llg7;->b:Lq86;

    .line 18
    .line 19
    invoke-virtual {v0, p2}, Lq86;->a(Ldi4;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    check-cast p2, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-direct {p0, p1, p2}, Lgx0;-><init>(Lo75;I)V

    .line 30
    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_0
    sget-object p0, Llg7;->c:Lq86;

    .line 34
    .line 35
    invoke-virtual {p0, p2}, Lq86;->a(Ldi4;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string p2, ".\u00a0"

    .line 44
    .line 45
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    new-instance p2, Lru5;

    .line 50
    .line 51
    iget-object p1, p1, Lj75;->a:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p1, Lo75;

    .line 54
    .line 55
    invoke-direct {p2, p1, p0}, Lru5;-><init>(Lo75;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-object p2
.end method
