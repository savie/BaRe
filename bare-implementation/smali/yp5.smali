.class public final Lyp5;
.super Lxp5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final e(Ljava/lang/Object;Lfk4;Lc87;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Double;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    invoke-virtual {p2, p0, p1}, Lfk4;->z(D)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final f(Ljava/lang/Object;Lfk4;Lc87;Lrc8;)V
    .locals 2

    .line 1
    move-object p0, p1

    .line 2
    check-cast p0, Ljava/lang/Double;

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    sget-object p3, Lup5;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0, v1}, Ljava/lang/Double;->isFinite(D)Z

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    if-nez p3, :cond_0

    .line 15
    .line 16
    sget-object p3, Lmm4;->n:Lmm4;

    .line 17
    .line 18
    invoke-virtual {p4, p1, p3}, Lrc8;->d(Ljava/lang/Object;Lmm4;)Lnw8;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p4, p2, p1}, Lrc8;->e(Lfk4;Lnw8;)Lnw8;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    invoke-virtual {p2, v0, v1}, Lfk4;->z(D)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p4, p2, p1}, Lrc8;->f(Lfk4;Lnw8;)Lnw8;

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 38
    .line 39
    .line 40
    move-result-wide p0

    .line 41
    invoke-virtual {p2, p0, p1}, Lfk4;->z(D)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
