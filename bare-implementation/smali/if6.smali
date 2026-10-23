.class public final Lif6;
.super Ltn7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final e(Ljava/lang/Object;Lfk4;Lc87;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p2, Lcv3;

    .line 6
    .line 7
    const-string p1, "write raw value"

    .line 8
    .line 9
    invoke-virtual {p2, p1}, Lcv3;->l0(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p0}, Lfk4;->O(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final f(Ljava/lang/Object;Lfk4;Lc87;Lrc8;)V
    .locals 1

    .line 1
    sget-object v0, Lmm4;->f:Lmm4;

    .line 2
    .line 3
    invoke-virtual {p4, p1, v0}, Lrc8;->d(Ljava/lang/Object;Lmm4;)Lnw8;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p4, p2, v0}, Lrc8;->e(Lfk4;Lnw8;)Lnw8;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lif6;->e(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p4, p2, v0}, Lrc8;->f(Lfk4;Lnw8;)Lnw8;

    .line 15
    .line 16
    .line 17
    return-void
.end method
