.class public abstract Lxp5;
.super Lh58;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Liv1;


# virtual methods
.method public final a(Lc87;Lkp0;)Lem4;
    .locals 1

    .line 1
    iget-object v0, p0, Ltn7;->a:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-static {p1, p2, v0}, Ltn7;->k(Lc87;Lkp0;Ljava/lang/Class;)Lbk4;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    iget-object p1, p1, Lbk4;->b:Lak4;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 p2, 0x5

    .line 16
    if-eq p1, p2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-class p0, Ljava/math/BigDecimal;

    .line 20
    .line 21
    if-ne v0, p0, :cond_1

    .line 22
    .line 23
    sget-object p0, Lvp5;->e:Lvp5;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_1
    sget-object p0, Lvp5;->f:Lvp5;

    .line 27
    .line 28
    :cond_2
    :goto_0
    return-object p0
.end method
