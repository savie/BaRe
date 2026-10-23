.class public final Lnm3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a(Lnm3;Lmt3;)Lym1;
    .locals 4

    .line 1
    new-instance v0, Lox;

    .line 2
    .line 3
    const/16 v1, 0xd

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Lox;-><init>(Ljava/lang/Object;I)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lvk3;->Asc:Lvk3;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-object p0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance p0, Lxx;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-direct {p0, v2, p1}, Lxx;-><init>(ILmt3;)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lvk3;->Desc:Lvk3;

    .line 28
    .line 29
    if-ne v1, p1, :cond_0

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    new-instance v3, Lyx;

    .line 39
    .line 40
    invoke-direct {v3, v0, v2}, Lyx;-><init>(Ljava/lang/Object;I)V

    .line 41
    .line 42
    .line 43
    if-ne v1, p1, :cond_1

    .line 44
    .line 45
    invoke-interface {v3}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    new-instance p1, Lym1;

    .line 53
    .line 54
    invoke-direct {p1, v3, p0}, Lym1;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    .line 55
    .line 56
    .line 57
    return-object p1
.end method
