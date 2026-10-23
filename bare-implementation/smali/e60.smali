.class public final Le60;
.super Lsc8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final a(Lkp0;)Lrc8;
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
    new-instance v0, Le60;

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

.method public final c()Ltm4;
    .locals 0

    .line 1
    sget-object p0, Ltm4;->b:Ltm4;

    .line 2
    .line 3
    return-object p0
.end method
