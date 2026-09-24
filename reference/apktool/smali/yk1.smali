.class public final Lyk1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lpi4;


# virtual methods
.method public final a(Ljava/lang/reflect/Type;Ljava/util/Set;Lnh5;)Lqi4;
    .locals 1

    .line 1
    invoke-static {p1}, Lwx3;->l(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-class p2, Ljava/util/List;

    .line 14
    .line 15
    if-eq p0, p2, :cond_3

    .line 16
    .line 17
    const-class p2, Ljava/util/Collection;

    .line 18
    .line 19
    if-ne p0, p2, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    const-class p2, Ljava/util/Set;

    .line 23
    .line 24
    if-ne p0, p2, :cond_2

    .line 25
    .line 26
    invoke-static {p1}, Lwx3;->e(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    sget-object p1, Lyh8;->a:Ljava/util/Set;

    .line 31
    .line 32
    invoke-virtual {p3, p0, p1, v0}, Lnh5;->b(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lqi4;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    new-instance p1, Lal1;

    .line 37
    .line 38
    invoke-direct {p1, p0}, Lbl1;-><init>(Lqi4;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lqi4;->c()Lpp5;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :cond_2
    :goto_0
    return-object v0

    .line 47
    :cond_3
    :goto_1
    invoke-static {p1}, Lwx3;->e(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    sget-object p1, Lyh8;->a:Ljava/util/Set;

    .line 52
    .line 53
    invoke-virtual {p3, p0, p1, v0}, Lnh5;->b(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lqi4;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    new-instance p1, Lzk1;

    .line 58
    .line 59
    invoke-direct {p1, p0}, Lbl1;-><init>(Lqi4;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lqi4;->c()Lpp5;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method
