.class public Lz50;
.super Lsc8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public bridge synthetic a(Lkp0;)Lrc8;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lz50;->g(Lkp0;)Lz50;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public c()Ltm4;
    .locals 0

    .line 1
    sget-object p0, Ltm4;->c:Ltm4;

    .line 2
    .line 3
    return-object p0
.end method

.method public g(Lkp0;)Lz50;
    .locals 1

    .line 1
    iget-object v0, p0, Lsc8;->b:Lkp0;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v0, Lz50;

    .line 7
    .line 8
    iget-object p0, p0, Lsc8;->a:Lmc8;

    .line 9
    .line 10
    invoke-direct {v0, p0, p1}, Lsc8;-><init>(Lmc8;Lkp0;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method
